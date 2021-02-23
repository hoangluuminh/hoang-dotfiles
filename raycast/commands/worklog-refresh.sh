#!/bin/bash

# @raycast.title Current Worklog
# @raycast.author Luu Minh Hoang
# @raycast.authorURL https://github.com/hoangluuminh
# @raycast.description Refresh Notion worklog.

# @raycast.icon images/notion.png
# @raycast.mode inline
# @raycast.packageName Worklog
# @raycast.refreshTime 30s
# @raycast.schemaVersion 1

python3 ~/.dotfiles/worklog/worklog.py
result=$(cat ~/.dotfiles/worklog/worklog.txt)

echo "$result"

