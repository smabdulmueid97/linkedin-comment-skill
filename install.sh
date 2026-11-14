#!/bin/sh
# Install linkedin-comment-skill into Claude Code
set -e
DEST="$HOME/.claude/skills/linkedin-comment-skill"
mkdir -p "$DEST"
cp "$(dirname "$0")/SKILL.md" "$DEST/SKILL.md"
mkdir -p "$DEST/templates"
cp "$(dirname "$0")/templates/daily-plan.md" "$DEST/templates/daily-plan.md" 2>/dev/null || true
cp "$(dirname "$0")/templates/comment-queue.csv" "$DEST/templates/comment-queue.csv" 2>/dev/null || true
cp "$(dirname "$0")/templates/config.yaml" "$DEST/templates/config.yaml" 2>/dev/null || true
echo "Installed linkedin-comment-skill to $DEST"
echo "Try in Claude Code: comment on LinkedIn posts from the past 24 hours in my niche"
