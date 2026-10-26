#!/bin/bash
# Download the exact Debian source packages behind a release's GPL/LGPL packages.
#
#   scripts/fetch-debian-sources.sh releases/OHOS_v2.0.1.0-r5/packages.tsv out/
#
# Reads packages.tsv (package, version, source, source_version, licences), keeps the source packages whose binary
# packages carry a GPL or LGPL licence, and fetches each one at its exact version from snapshot.debian.org with
# `dget` semantics (the .dsc plus every file it lists, checksums verified). Packages built by Arduino or Qualcomm
# (versions containing "arduino" or "qcom") aren't on Debian's servers; they're listed in out/not-on-debian.txt and
# come from their vendors' archives instead.
set -euo pipefail
TSV=${1:?packages.tsv}
OUT=${2:?output directory}
mkdir -p "$OUT"
command -v curl >/dev/null || { echo "needs curl" >&2; exit 1; }

API=https://snapshot.debian.org
: > "$OUT/not-on-debian.txt"
: > "$OUT/failed.txt"

tail -n +2 "$TSV" | awk -F'\t' 'toupper($5) ~ /GPL/ {print $3"\t"$4}' | sort -u | while IFS=$'\t' read -r src ver; do
  case "$ver" in *arduino*|*qcom*) printf '%s\t%s\n' "$src" "$ver" >> "$OUT/not-on-debian.txt"; continue ;; esac
  dir="$OUT/$src/$ver"
  [ -f "$dir/.done" ] && continue
  mkdir -p "$dir"
  # The snapshot API lists the source package's files (name, hash) for this exact version.
  if ! files=$(curl -fsS "$API/mr/package/$src/$ver/srcfiles?fileinfo=1"); then
    printf '%s\t%s\n' "$src" "$ver" >> "$OUT/failed.txt"; continue
  fi
  echo "$files" | python3 -c '
import json, sys
d = json.load(sys.stdin)
for h, infos in d.get("fileinfo", {}).items():
    print(h, infos[0]["name"])
' | while read -r hash name; do
    curl -fsS -o "$dir/$name" "$API/file/$hash" || { printf '%s\t%s\t%s\n' "$src" "$ver" "$name" >> "$OUT/failed.txt"; continue; }
    echo "$hash  $dir/$name" | shasum -a 1 -c --quiet - || { echo "checksum mismatch: $dir/$name" >&2; exit 1; }
  done
  touch "$dir/.done"
  echo "ok $src $ver"
done

echo "done. Vendor-built packages to fetch separately: $(wc -l < "$OUT/not-on-debian.txt"); failures: $(wc -l < "$OUT/failed.txt")"
