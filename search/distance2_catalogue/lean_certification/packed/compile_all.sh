#!/usr/bin/env bash
# Compile-check the *packed* catalogue certification (all 14,116 codes).
#
# Unlike full_native/ and kernel_b1b2/ (one theorem per code), the packed
# version certifies each chunk with a *single* theorem
#   Catalogue.ChunkNNN.chunk_all_ok : checks.all id = true
# and then an umbrella theorem
#   Catalogue.catalogue_all_ok
# that conjoins all 29 chunk statements, so the entire catalogue is certified
# by one named result (no "isolated instances").
#
# Because the umbrella imports the chunks by module path, we emit each chunk's
# .olean and add the repo root to LEAN_PATH for the umbrella step.
#
# Run from the repository root:
#   bash search/distance2_catalogue/lean_certification/packed/compile_all.sh
set -u
CERT="search/distance2_catalogue/lean_certification/packed"
DIR="$CERT/Chunks"
LAKE="${LAKE:-lake}"
JOBS="${JOBS:-6}"

# Lean's module search path is ';'-separated with Windows-style paths under
# MSYS/Cygwin/Git-Bash, and ':'-separated with ordinary paths everywhere else.
if ROOT="$(pwd -W 2>/dev/null)"; then
  ROOT="${ROOT//\//\\}"; SEP=';'
else
  ROOT="$(pwd)"; SEP=':'
fi
BASE="$("$LAKE" env printenv LEAN_PATH)"

compile_one() {
  local f="$1"
  # Resume: skip only when the success marker is present AND the log is newer
  # than the source, so a regenerated chunk is always recompiled.
  if [[ -f "$f.log" && "$f.log" -nt "$f" ]] && grep -q "__CHUNK_OK__" "$f.log"; then
    echo "SKIP $(basename "$f")"; return 0
  fi
  # Drop any stale artefact first, so a failed run can never be mistaken for a
  # successful one on the strength of a leftover .olean.
  rm -f "${f%.lean}.olean"
  if "$LAKE" env lean -o "${f%.lean}.olean" "$f" > "$f.log" 2>&1; then
    echo "__CHUNK_OK__" >> "$f.log"
    echo "OK   $(basename "$f")"
  else
    echo "FAIL $(basename "$f")"; tail -5 "$f.log"
  fi
}

echo "== phase 1: compile ${JOBS}-way, emit oleans =="
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
  if [[ -f "$f.log" ]] && grep -q "__CHUNK_OK__" "$f.log" && [[ -f "${f%.lean}.olean" ]]; then
    ok=$((ok + 1))
  else
    fail=$((fail + 1)); echo "FAILED: $f"
  fi
done
total=$(ls "$DIR"/Chunk*.lean | wc -l)
echo "phase 1: $ok/$total chunks OK, $fail failed"
if (( fail > 0 )); then echo "aborting: chunk failures"; exit 1; fi

echo "== phase 2: compile umbrella (catalogue_all_ok) =="
if LEAN_PATH="$BASE$SEP$ROOT" "$LAKE" env lean "$CERT/AllOk.lean" > "$CERT/AllOk.lean.log" 2>&1; then
  echo "UMBRELLA OK: catalogue_all_ok type-checks (all 14,116 codes)"
else
  echo "UMBRELLA FAILED"; tail -20 "$CERT/AllOk.lean.log"; exit 1
fi
echo "ALL DONE: $ok/$total chunks + umbrella"
