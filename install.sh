#!/usr/bin/env bash
# Installs the DESORA fiverr-advisor agent for Claude Code, globally (all projects).
# Usage: bash install.sh
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
DEST="$HOME/.claude"
mkdir -p "$DEST/agents"
cp "$SRC/.claude/agents/fiverr-advisor.md" "$DEST/agents/fiverr-advisor.md"
# Keep existing live data (desora-state.md) if already installed
if [ -f "$DEST/fiverr-knowledge/desora-state.md" ]; then
  cp "$DEST/fiverr-knowledge/desora-state.md" "$SRC/.desora-state.backup.md"
fi
rm -rf "$DEST/fiverr-knowledge"
cp -R "$SRC/.claude/fiverr-knowledge" "$DEST/fiverr-knowledge"
if [ -f "$SRC/.desora-state.backup.md" ]; then
  mv "$SRC/.desora-state.backup.md" "$DEST/fiverr-knowledge/desora-state.md"
fi
echo "Installed: $DEST/agents/fiverr-advisor.md"
echo "Knowledge: $DEST/fiverr-knowledge/"
echo "Restart Claude Code, then type /agents to see fiverr-advisor."
