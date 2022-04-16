#!/bin/bash

# @raycast.title Current Task
# @raycast.author Luu Minh Hoang
# @raycast.authorURL https://github.com/hoangluuminh
# @raycast.description Set Current Task.

# @raycast.icon images/notes.png
# @raycast.mode silent
# @raycast.packageName Productivity
# @raycast.schemaVersion 1

# @raycast.argument1 { "type": "text", "placeholder": "Content", "optional": true }

result=$1

if [[ $result == "" ]]
then
  result=""
fi

echo "$result" > ~/.dotfiles/raycast/commands/files/current-task.txt
