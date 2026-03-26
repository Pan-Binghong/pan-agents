#!/bin/bash
# 将 ~/.claude/agents/ 中的 agent 同步到仓库并推送

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SOURCE_DIR="$HOME/.claude/agents"
TARGET_DIR="$SCRIPT_DIR/agents"

cp "$SOURCE_DIR"/*.md "$TARGET_DIR"/

cd "$SCRIPT_DIR"
git add agents/
git diff --cached --quiet && echo "没有变化，无需同步。" && exit 0

git commit -m "chore: sync agents $(date '+%Y-%m-%d')"
git push
echo "同步完成！"
