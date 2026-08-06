#!/usr/bin/env bash
# Compile-check all catalogue certification chunks (14,116 codes).
#
# Same coverage as ../full_native/, but each `code_i_ok` is split so that the
# support and residue-shift conjuncts are discharged by kernel `decide`.
# Each chunk also carries, for every code, the quantum-error-correction statement
#   code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2
# obtained from the pure-kernel bridge theorem in `SS/BridgeD2.lean`.
#
# Run from the repository root:
#   bash search/distance2_catalogue/lean_certification/kernel_b1b2/compile_all.sh
#
# Set JOBS to control parallelism (default 6).
set -u
DIR="search/distance2_catalogue/lean_certification/kernel_b1b2/Chunks"
LAKE="${LAKE:-lake}"
JOBS="${JOBS:-6}"

compile_one() {
  local f="$1"
  # Resume: skip only when the success marker is present AND the log is newer
  # than the source, so a regenerated chunk is always recompiled.
  if [[ -f "$f.log" && "$f.log" -nt "$f" ]] && grep -q "__CHUNK_OK__" "$f.log"; then
    echo "SKIP $(basename "$f")"; return 0
  fi
  if "$LAKE" env lean "$f" > "$f.log" 2>&1; then
    echo "__CHUNK_OK__" >> "$f.log"
    echo "OK   $(basename "$f")"
  else
    echo "FAIL $(basename "$f")"; tail -5 "$f.log"
  fi
}

echo "== compiling ${JOBS}-way =="
running=0
for f in "$DIR"/Chunk*.lean; do
  compile_one "$f" &
  running=$((running + 1))
  if (( running >= JOBS )); then wait -n; running=$((running - 1)); fi
done
wait

# Success is decided by the marker, which is appended only when `lake env lean`
# exits 0 -- never by grepping the log for "error". A chunk that was killed, or a
# run where `lake` is not on PATH, leaves a log containing no such word and would
# otherwise be miscounted as passing.
ok=0; fail=0
for f in "$DIR"/Chunk*.lean; do
  if [[ -f "$f.log" ]] && grep -q "__CHUNK_OK__" "$f.log"; then
    ok=$((ok + 1))
  else
    fail=$((fail + 1)); echo "FAILED: $f"
  fi
done
total=$(ls "$DIR"/Chunk*.lean | wc -l)
echo "$ok/$total chunks OK, $fail failed"
(( fail == 0 ))
