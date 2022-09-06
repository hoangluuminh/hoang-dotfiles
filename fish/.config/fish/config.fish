# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx PATH $PATH $ANDROID_SDK_ROOT/emulator
set -gx PATH $PATH $ANDROID_SDK_ROOT/platform-tools
set -gx JAVA_HOME (/usr/libexec/java_home -v 11.0.9.1)
set -gx CHROME_EXECUTABLE /Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge

# Bun
set -Ux BUN_INSTALL "/Users/hoang/.bun"
set -px --path PATH "/Users/hoang/.bun/bin"

# Go
set -px --path PATH "/Users/hoang/go"
set -px --path PATH "/Users/hoang/go/bin"
