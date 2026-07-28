#!/usr/bin/env bash
# Compile-check all catalogue certification chunks (14,116 codes).
#
# Each chunk contains, for every code, the data record `code_i`, the certificate
# `code_i_ok : code_i.OK`, and the quantum-error-correction statement
#   code_i_qec : ∃ ψ, SS.IsAmplitudes code_i ψ ∧ SS.HasDistance ψ 2
# obtained from the pure-kernel bridge theorem in `SS/BridgeD2.lean`.
#
# Every proof here is checked by the Lean kernel; no `native_decide` is used. Each
# chunk ends with `#print axioms code_i_qec` for every code it certifies, so the
# logs written next to the sources (Chunks/ChunkNNN.lean.log) record the axiom
# dependency of all 14,116 theorems. To confirm the trust base afterwards:
#
#   cat <this dir>/Chunks/Chunk*.lean.log | grep -c 'depends on axioms'        # 14116
#   cat <this dir>/Chunks/Chunk*.lean.log | grep -c 'ofReduceBool\|trustCompiler'  # 0
#
# Run from the repository root:
#   bash search/distance2_catalogue/lean_certification/pure/compile_all.sh
#
# Set JOBS to control parallelism (default 6).
set -u
DIR="search/distance2_catalogue/lean_certification/pure/Chunks"
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
