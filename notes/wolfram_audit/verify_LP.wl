(* ================================================================== *)
(* verify_LP.wl                                                       *)
(* Wolfram Language verification of KL-derived linear systems          *)
(* from LPv3.tex (5 families A-E + worked (5,2,2) example)           *)
(*                                                                     *)
(* Usage: run in Mathematica or via  wolframscript -file verify_LP.wl  *)
(* ================================================================== *)

(* ---- Helper: bitstring -> Z-sign vector ---- *)
bitToSign[s_String] := Table[
  If[StringPart[s, i] == "0", 1, -1],
  {i, StringLength[s]}
]

(* ---- Core: build augmented matrix and RowReduce over Q ---- *)
(* Returns an Association with all computed data *)
solveKL[c0Strings_List, c1Strings_List] := Module[
  {n, n0, n1, nVars, sC0, sC1, aug, rref,
   pivotCols, freeCols, varNames, pos, p},

  n  = StringLength[c0Strings[[1]]];
  n0 = Length[c0Strings];
  n1 = Length[c1Strings];
  nVars = n0 + n1;

  sC0 = bitToSign /@ c0Strings;
  sC1 = bitToSign /@ c1Strings;

  (* Build augmented matrix [A | b]
     Rows 1..n : Z_i shared-marginal equations
         sum_j s_i(c0_j) X_j - sum_k s_i(c1_k) Y_k = 0
     Row n+1   : sum X_j = 1  (normalization of |0_L>)
     Row n+2   : sum Y_k = 1  (normalization of |1_L>)  *)

  aug = Table[
    Join[
      Table[sC0[[j, i]], {j, n0}],
      Table[-sC1[[k, i]], {k, n1}],
      {0}
    ],
    {i, n}
  ];
  AppendTo[aug,
    Join[ConstantArray[1, n0], ConstantArray[0, n1], {1}]];
  AppendTo[aug,
    Join[ConstantArray[0, n0], ConstantArray[1, n1], {1}]];

  (* Exact row reduction *)
  rref = RowReduce[aug];

  (* Identify pivot columns *)
  pivotCols = {};
  Do[
    pos = Position[rref[[row]], _?(# != 0 &)];
    If[Length[pos] > 0,
      p = pos[[1, 1]];
      If[p <= nVars, AppendTo[pivotCols, p]]
    ],
    {row, Length[rref]}
  ];
  freeCols = Complement[Range[nVars], pivotCols];

  varNames = Join[
    ("X_" <> # &) /@ c0Strings,
    ("Y_" <> # &) /@ c1Strings
  ];

  <|
    "n" -> n, "n0" -> n0, "n1" -> n1, "nVars" -> nVars,
    "C0" -> c0Strings, "C1" -> c1Strings,
    "sC0" -> sC0, "sC1" -> sC1,
    "aug" -> aug, "rref" -> rref,
    "pivotCols" -> pivotCols, "freeCols" -> freeCols,
    "varNames" -> varNames,
    "rank" -> Length[pivotCols],
    "nFree" -> Length[freeCols]
  |>
]

(* ---- Extract symbolic parametric solution ---- *)
extractSolution[result_Association] := Module[
  {rref, nVars, pivotCols, freeCols, varNames,
   freeSyms, sol, row, pc, expr},

  rref      = result["rref"];
  nVars     = result["nVars"];
  pivotCols = result["pivotCols"];
  freeCols  = result["freeCols"];
  varNames  = result["varNames"];

  freeSyms = Table[
    Symbol["t" <> ToString[k]],
    {k, Length[freeCols]}
  ];

  sol = <||>;

  (* Free variables *)
  Do[
    sol[varNames[[freeCols[[k]]]]] = freeSyms[[k]],
    {k, Length[freeCols]}
  ];

  (* Pivot variables from RREF *)
  Do[
    row = rref[[r]];
    pc  = pivotCols[[r]];
    If[pc <= nVars,
      expr = row[[nVars + 1]];
      Do[
        expr = expr - row[[freeCols[[k]]]] * freeSyms[[k]],
        {k, Length[freeCols]}
      ];
      sol[varNames[[pc]]] = Simplify[expr];
    ],
    {r, Length[pivotCols]}
  ];

  <|
    "solution"  -> sol,
    "freeSyms"  -> freeSyms,
    "freeNames" -> (varNames[[#]] & /@ freeCols)
  |>
]

(* ---- Compute Z-marginal vector and SigmaZ ---- *)
computeZMarginals[result_Association, solData_Association] := Module[
  {n, sC0, sC1, c0, c1, sol, probs0, probs1, zVec0, zVec1, sigZ},

  n   = result["n"];
  sC0 = result["sC0"];
  sC1 = result["sC1"];
  c0  = result["C0"];
  c1  = result["C1"];
  sol = solData["solution"];

  probs0 = Table[sol["X_" <> c0[[j]]], {j, Length[c0]}];
  probs1 = Table[sol["Y_" <> c1[[k]]], {k, Length[c1]}];

  zVec0 = Table[
    Sum[sC0[[j, i]] * probs0[[j]], {j, Length[c0]}], {i, n}
  ] // Simplify;
  zVec1 = Table[
    Sum[sC1[[k, i]] * probs1[[k]], {k, Length[c1]}], {i, n}
  ] // Simplify;

  sigZ = Total[zVec0^2] // Expand // Simplify;

  <|
    "zMargC0"   -> zVec0,
    "zMargC1"   -> zVec1,
    "zMargMatch" -> (Simplify[zVec0 - zVec1] === ConstantArray[0, n]),
    "sigmaZ"    -> sigZ
  |>
]

(* ---- Compute feasibility region from nonnegativity ---- *)
(* Substitutes the parametric solution into p >= 0 for every *)
(* probability, then calls Reduce to get a clean description. *)
computeFeasibility[result_Association, solData_Association] := Module[
  {varNames, sol, freeSyms, allExprs, ineqs},

  varNames = result["varNames"];
  sol      = solData["solution"];
  freeSyms = solData["freeSyms"];

  (* Every probability expression must be >= 0 *)
  allExprs = Table[sol[vn], {vn, varNames}];
  ineqs    = And @@ ((# >= 0) & /@ allExprs);

  (* Reduce over Reals to get a clean region *)
  If[Length[freeSyms] == 1,
    Reduce[ineqs, freeSyms[[1]], Reals],
    Reduce[ineqs, freeSyms, Reals]
  ]
]

(* ---- Full verification for one example ---- *)
verifyExample[name_String, c0_List, c1_List,
              paperProbs0_List, paperProbs1_List,
              paperZMarg_List, paperSigZ_] := Module[
  {result, solData, zData, region, sC0, sC1, n, zVec0p, zVec1p, sigZp},

  Print["\n========================================"];
  Print["  ", name];
  Print["========================================"];

  result  = solveKL[c0, c1];
  solData = extractSolution[result];
  zData   = computeZMarginals[result, solData];

  Print["Variables: ", result["nVars"],
        "  Rank: ", result["rank"],
        "  Free: ", result["nFree"]];
  Print["Free variable(s): ", solData["freeNames"]];

  (* Print parametric solution *)
  Print["\nParametric solution:"];
  Do[
    Print["  ", vn, " = ", solData["solution"][vn]],
    {vn, result["varNames"]}
  ];

  (* Feasibility *)
  Print["\nFeasibility region:"];
  If[result["nFree"] == 1,
    region = computeFeasibility[result, solData];
    Print["  ", region],
    Print["  ", computeFeasibility[result, solData]]
  ];

  (* Z-marginals *)
  Print["\nZ-marginal (from C0): ", zData["zMargC0"]];
  Print["Z-marginal (from C1): ", zData["zMargC1"]];
  Print["C0 == C1: ", zData["zMargMatch"]];

  (* Cross-check with paper values *)
  n = result["n"];
  sC0 = result["sC0"]; sC1 = result["sC1"];
  zVec0p = Table[
    Sum[sC0[[j, i]] * paperProbs0[[j]], {j, Length[c0]}], {i, n}
  ] // Simplify;
  zVec1p = Table[
    Sum[sC1[[k, i]] * paperProbs1[[k]], {k, Length[c1]}], {i, n}
  ] // Simplify;
  sigZp = Total[zVec0p^2] // Expand // Simplify;

  Print["\nPaper Z-marginal check: ",
    Simplify[zVec0p - paperZMarg] === ConstantArray[0, n]];
  Print["Paper SigmaZ check: ",
    Simplify[sigZp - paperSigZ] === 0];

  Print["\nSigmaZ: ", zData["sigmaZ"]];

  (* Range for 1-parameter cases *)
  If[result["nFree"] == 1,
    Module[{t1, lo, hi, minVal, maxVal},
      t1 = solData["freeSyms"][[1]];
      (* Get interval bounds from feasibility *)
      region = computeFeasibility[result, solData];
      minVal = Minimize[{zData["sigmaZ"], region}, t1];
      maxVal = Maximize[{zData["sigmaZ"], region}, t1];
      Print["SigmaZ range: [", minVal[[1]], ", ", maxVal[[1]], "]"];
    ]
  ];

  Print[""];
]

(* ==================================================================
   RUN ALL VERIFICATIONS
   ================================================================== *)

Print["Starting LPv3.tex verification...\n"];

(* Family A *)
verifyExample["Family A",
  {"10010","11101","01100"}, {"11000","10111","00110"},
  {1/2, 1/2-t, t}, {1/2, 1/2-t, t},
  {2t-1, 0, 0, 0, 2t}, 8t^2 - 4t + 1
];

(* Family B *)
verifyExample["Family B",
  {"00000","00110","10010","11101"},
  {"00011","01100","10100","11000"},
  {1/3, 1/3-t, t, 1/3}, {1/3, 1/3-t, 1/3, t},
  {1/3-2t, 1/3, -1/3+2t, 1/3, 1/3}, 8t^2 - 8t/3 + 5/9
];

(* Family C *)
verifyExample["Family C",
  {"00000","01111","10111","11000"},
  {"01001","01100","10010","10100"},
  {1/3, 1/3-t, t, 1/3}, {1/3, 1/3-t, 1/3, t},
  {1/3-2t, -1/3+2t, 1/3, 1/3, 1/3}, 8t^2 - 8t/3 + 5/9
];

(* Family D *)
verifyExample["Family D",
  {"00000","01001","11101","11110"},
  {"00011","01100","10111","11000"},
  {1/3, 1/3-t, t, 1/3}, {1/3-t, 1/3, t, 1/3},
  {1/3-2t, -1/3, 1/3-2t, 1/3, 1/3}, 8t^2 - 8t/3 + 5/9
];

(* Family E *)
verifyExample["Family E",
  {"01011","10110","10101"}, {"00111","11010","11001"},
  {1/2, 1/2-t, t}, {1/2, 1/2-t, t},
  {0, 0, 0, -1+2t, -2t}, 8t^2 - 4t + 1
];

(* Worked example (5,2,2) *)
verifyExample["Worked (5,2,2)",
  {"00000","01111","10111"},
  {"00011","00101","00110","11001","11010","11100"},
  {3/7, 2/7, 2/7},
  {1/7+v, 1/7+u, 3/7-u-v, 2/7-u-v, u, v},
  {3/7, 3/7, -1/7, -1/7, -1/7}, 3/7
];

(* ==================================================================
   APPENDIX A.3: conv(V0) ∩ conv(V1) DIMENSION TEST
   
   For each example, minimize and maximize each Z-marginal coordinate 
   ⟨Z_i⟩ subject to all feasibility constraints (nonnegativity + 
   equality). If min ≠ max for any i, then conv(V0) ∩ conv(V1) has 
   positive dimension and the shared marginals vary.
   ================================================================== *)

Print["\n========================================"];
Print["  APPENDIX A.3: DIMENSION TEST"];
Print["========================================\n"];

(* Full dimension test for one example *)
dimTest[name_String, c0_List, c1_List] := Module[
  {n, n0, n1, sC0, sC1, aug, rref, nVars, pivotCols, freeCols,
   freeSyms, sol, varNames, allExprs, ineqs, region,
   zVec, results, pos, p, anyVary},
  
  n  = StringLength[c0[[1]]];
  n0 = Length[c0];
  n1 = Length[c1];
  nVars = n0 + n1;
  
  sC0 = bitToSign /@ c0;
  sC1 = bitToSign /@ c1;
  
  (* Build augmented matrix *)
  aug = Table[
    Join[Table[sC0[[j, i]], {j, n0}], Table[-sC1[[k, i]], {k, n1}], {0}],
    {i, n}
  ];
  AppendTo[aug, Join[ConstantArray[1, n0], ConstantArray[0, n1], {1}]];
  AppendTo[aug, Join[ConstantArray[0, n0], ConstantArray[1, n1], {1}]];
  
  rref = RowReduce[aug];
  
  (* Pivot/free columns *)
  pivotCols = {};
  Do[
    pos = Position[rref[[row]], _?(# != 0 &)];
    If[Length[pos] > 0, p = pos[[1, 1]]; If[p <= nVars, AppendTo[pivotCols, p]]],
    {row, Length[rref]}
  ];
  freeCols = Complement[Range[nVars], pivotCols];
  
  (* Build parametric solution *)
  freeSyms = Table[Symbol["t" <> ToString[k]], {k, Length[freeCols]}];
  varNames = Join[("X" <> # &) /@ c0, ("Y" <> # &) /@ c1];
  sol = Association[];
  Do[sol[varNames[[freeCols[[k]]]]] = freeSyms[[k]], {k, Length[freeCols]}];
  Do[
    Module[{row2, pc, expr},
      row2 = rref[[r]]; pc = pivotCols[[r]];
      If[pc <= nVars,
        expr = row2[[nVars + 1]];
        Do[expr = expr - row2[[freeCols[[k]]]] * freeSyms[[k]], {k, Length[freeCols]}];
        sol[varNames[[pc]]] = Simplify[expr];
      ]
    ],
    {r, Length[pivotCols]}
  ];
  
  (* Feasibility region *)
  allExprs = Table[sol[vn], {vn, varNames}];
  ineqs = And @@ ((# >= 0) & /@ allExprs);
  If[Length[freeSyms] == 1,
    region = Reduce[ineqs, freeSyms[[1]], Reals],
    region = Reduce[ineqs, freeSyms, Reals]
  ];
  
  (* Z-marginal vector from C0 side *)
  Module[{probs0},
    probs0 = Table[sol["X" <> c0[[j]]], {j, n0}];
    zVec = Table[Sum[sC0[[j, i]] * probs0[[j]], {j, n0}], {i, n}] // Simplify;
  ];
  
  (* Min/max each Z_i *)
  Print["--- ", name, " ---"];
  results = Table[
    Module[{minVal, maxVal},
      If[Length[freeSyms] == 1,
        minVal = Minimize[{zVec[[i]], region}, freeSyms[[1]]];
        maxVal = Maximize[{zVec[[i]], region}, freeSyms[[1]]];,
        minVal = Minimize[{zVec[[i]], region}, freeSyms];
        maxVal = Maximize[{zVec[[i]], region}, freeSyms];
      ];
      Print["  Z_", i, ": [", minVal[[1]], ", ", maxVal[[1]], "]",
        If[minVal[[1]] == maxVal[[1]], " (fixed)", " (varies)"]];
      {minVal[[1]], maxVal[[1]]}
    ],
    {i, n}
  ];
  
  anyVary = Or @@ (#[[1]] != #[[2]] & /@ results);
  Print["  conv(V0) ∩ conv(V1): ",
    If[anyVary, "POSITIVE DIMENSION (line segment)", "POINT (zero dimension)"]];
  Print[""];
  anyVary
]

vA = dimTest["Family A",
  {"10010","11101","01100"}, {"11000","10111","00110"}];
vB = dimTest["Family B",
  {"00000","00110","10010","11101"}, {"00011","01100","10100","11000"}];
vC = dimTest["Family C",
  {"00000","01111","10111","11000"}, {"01001","01100","10010","10100"}];
vD = dimTest["Family D",
  {"00000","01001","11101","11110"}, {"00011","01100","10111","11000"}];
vE = dimTest["Family E",
  {"01011","10110","10101"}, {"00111","11010","11001"}];
vW = dimTest["Worked (5,2,2)",
  {"00000","01111","10111"}, {"00011","00101","00110","11001","11010","11100"}];

Print["DIMENSION TEST SUMMARY:"];
Print["  Family A:       ", If[vA, "varying (segment)", "fixed (point)"]];
Print["  Family B:       ", If[vB, "varying (segment)", "fixed (point)"]];
Print["  Family C:       ", If[vC, "varying (segment)", "fixed (point)"]];
Print["  Family D:       ", If[vD, "varying (segment)", "fixed (point)"]];
Print["  Family E:       ", If[vE, "varying (segment)", "fixed (point)"]];
Print["  Worked (5,2,2): ", If[vW, "varying (segment)", "fixed (point)"]];

Print["\n=== ALL VERIFICATIONS COMPLETE ==="];
