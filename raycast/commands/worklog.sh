#!/bin/bash

# @raycast.title Switch Worklog
# @raycast.author Caleb Stauffer
# @raycast.authorURL https://github.com/crstauf
# @raycast.description Test download and upload connection speed using [Speedtest](https://www.speedtest.net/apps/cli).

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

