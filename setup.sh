#!/bin/bash
# Скрипт настройки облачной среды Claude Code (вставляется в поле «Скрипт настройки»).
set -e
apt-get update -qq && apt-get install -y -qq ffmpeg >/dev/null || true
if [ -f .claude/skills/montazh-pro/scripts/pro.py ]; then
  python3 .claude/skills/montazh-pro/scripts/pro.py setup || true
fi
