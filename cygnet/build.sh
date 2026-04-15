#!/usr/bin/env bash
#
# Build the Ljubljana 2026 Cygnet databases and populate docs/cygnet/.
#
# Usage: bash cygnet/build.sh [--rebuild]
#   --rebuild   Force a clean build (removes the existing work dir first)
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
CYGNET_DIR="$(cd "$PROJECT_DIR/../cygnet" && pwd)"
WORK_DIR="$PROJECT_DIR/build/cygnet-work"
DOCS_DIR="$PROJECT_DIR/docs/cygnet"

if [[ "${1:-}" == "--rebuild" ]]; then
    rm -rf "$WORK_DIR"
fi

mkdir -p "$WORK_DIR/bin/raw_wns" "$DOCS_DIR"

# Seed work dir with wordnets.toml (cygnet build.sh won't overwrite if present)
cp "$PROJECT_DIR/etc/wordnets.toml" "$WORK_DIR/wordnets.toml"

# Pre-stage local wordnet files alongside wordnets.toml so that
# file:// relative URLs resolve correctly from $DATA_DIR.
cp "$PROJECT_DIR/etc/wnja-2.0.xml.xz"                "$WORK_DIR/"
cp "$PROJECT_DIR/etc/open_slovene_wordnet_1.1.xml.xz" "$WORK_DIR/"

bash "$CYGNET_DIR/build.sh" --work-dir "$WORK_DIR"

# Copy static UI files
cp "$CYGNET_DIR/web/index.html"     "$DOCS_DIR/"
cp "$CYGNET_DIR/web/relations.json" "$DOCS_DIR/"
cp -r "$CYGNET_DIR/web/img"         "$DOCS_DIR/"

# Copy and rename databases
cp "$WORK_DIR/web/cygnet.db.gz"     "$DOCS_DIR/ljubljana-2026.db.gz"
cp "$WORK_DIR/web/provenance.db.gz" "$DOCS_DIR/ljubljana-2026-provenance.db.gz"

# Deploy local.json
cp "$SCRIPT_DIR/etc/local.json" "$DOCS_DIR/local.json"

echo "Done. Cygnet UI available in $DOCS_DIR"
echo "Run 'bash cygnet/run.sh' to preview locally."
