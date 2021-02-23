#!/bin/bash

# @raycast.title Switch Worklog
# @raycast.author Luu Minh Hoang
# @raycast.authorURL https://github.com/hoangluuminh
# @raycast.description Switch Notion worklog.

# @raycast.icon images/notion.png
# @raycast.mode silent
# @raycast.packageName Worklog
# @raycast.schemaVersion 1

# @raycast.argument1 { "type": "text", "placeholder": "Notion view's URL" }

if [[ ! $1 == https://www.notion.so/* ]]
then
  echo "Invalid Notion view URL   ."
  return 1
fi

result=""

echo "$1" > ~/.dotfiles/worklog/view_path.txt
exec ~/.dotfiles/worklog/worklog.sh && cat ~/.dotfiles/worklog/worklog.txt > $result

echo "Switched to Worklog '$result'   ."

return 0

