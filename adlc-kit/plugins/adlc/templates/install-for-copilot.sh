#!/usr/bin/env bash
# Copies the adlc skills into a repo's .github/skills so GitHub Copilot agent mode can use them too.
# Usage: bash install-for-copilot.sh /path/to/repo
set -e
repo="${1:?repo path}"; here="$(cd "$(dirname "$0")/.." && pwd)"
mkdir -p "$repo/.github/skills"
cp -r "$here/skills/"* "$repo/.github/skills/"
echo "Copied $(ls "$here/skills" | wc -l) skills to $repo/.github/skills"
