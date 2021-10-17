# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -gx JAVA_HOME (/usr/libexec/java_home -v 11.0.9.1)
set -gx CHROME_EXECUTABLE /Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge
