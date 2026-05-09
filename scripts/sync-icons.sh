#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET_DIR="$ROOT_DIR/icons/cf"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "$TMP_DIR"
}
trap cleanup EXIT

echo "Syncing Cloudflare icons into: $TARGET_DIR"
mkdir -p "$TARGET_DIR"

git clone --depth=1 https://github.com/kyouheicf/cf-icons.git "$TMP_DIR/cf-icons" >/dev/null 2>&1
cp -f "$TMP_DIR/cf-icons"/src/*.svg "$TARGET_DIR"/ 2>/dev/null || true
cp -f "$TMP_DIR/cf-icons"/src/data/*.svg "$TARGET_DIR"/
cp -f "$TMP_DIR/cf-icons"/logo.svg "$TARGET_DIR"/

ICON_COUNT=$(find "$TARGET_DIR" -maxdepth 1 -type f -name '*.svg' | wc -l | tr -d ' ')
echo "Done. Local icon count: $ICON_COUNT"
