#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SELF="$(basename "$0")"

echo "🔍 Validating repository: $REPO_ROOT"
echo "-----------------------------------------------------"

FAIL=0

# Only scan actual project files, not the validator or git internals
SCAN_PATHS=$(find "$REPO_ROOT" \
  -type f \
  -not -path "*/.git/*" \
  -not -path "*/.github/*" \
  -not -name "$SELF")

# -----------------------------
# 1. Hard-coded username
# -----------------------------
echo "🔎 Checking for hard-coded usernames..."

if grep -Rni "\bbeckman55\b" $SCAN_PATHS; then
  echo "❌ Hard-coded username detected."
  FAIL=1
else
  echo "✅ No hard-coded usernames found."
fi

# -----------------------------
# 2. Hard-coded GitHub remotes (literal only)
# -----------------------------
echo "🔎 Checking for hard-coded GitHub remotes..."

# Literal username after github.com:
if grep -Rni "git@github.com:[a-zA-Z0-9_-]\+/" $SCAN_PATHS | grep -v '\$GITHUB_USER'; then
  echo "❌ Hard-coded GitHub remote detected."
  FAIL=1
else
  echo "✅ No hard-coded GitHub remotes found."
fi

# -----------------------------
# 3. Hard-coded absolute paths
# -----------------------------
echo "🔎 Checking for hard-coded absolute paths..."

if grep -Rni "/home/[a-zA-Z0-9_-]\+/" $SCAN_PATHS | grep -v '\$HOME'; then
  echo "❌ Hard-coded absolute paths detected."
  FAIL=1
else
  echo "✅ No hard-coded absolute paths found."
fi

# -----------------------------
# 4. Shebangs
# -----------------------------
echo "🔎 Checking for missing shebangs..."

for f in $SCAN_PATHS; do
  if [[ "$f" == *scripts/* ]] && [[ -f "$f" ]]; then
    head -n 1 "$f" | grep -q "#!" || {
      echo "❌ Missing shebang: $f"
      FAIL=1
    }
  fi
done

echo "✅ Shebang check complete."

# -----------------------------
# 5. Executable scripts
# -----------------------------
echo "🔎 Checking for non-executable scripts..."

for f in $SCAN_PATHS; do
  if [[ "$f" == *scripts/* ]] && [[ -f "$f" && ! -x "$f" ]]; then
    echo "❌ Script not executable: $f"
    FAIL=1
  fi
done

echo "✅ Executable check complete."

# -----------------------------
# 6. Shell syntax
# -----------------------------
echo "🔎 Validating shell syntax..."

for f in $SCAN_PATHS; do
  if [[ "$f" == *scripts/* ]]; then
    bash -n "$f" || { echo "❌ Syntax error in: $f"; FAIL=1; }
  fi
done

echo "✅ Shell syntax check complete."

# -----------------------------
# Final result
# -----------------------------
echo "-----------------------------------------------------"

if [[ "$FAIL" -eq 0 ]]; then
  echo "🎉 ALL CHECKS PASSED — your repo is clean and universal."
else
  echo "❌ VALIDATION FAILED — see issues above."
  exit 1
fi
