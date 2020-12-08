export TERM="xterm-256color"
source ~/.zsh/antigen.zsh

# PowerLevel9K Configs
POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_myname dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs time)
osicon=""
if [ "$(uname 2> /dev/null)" = "Darwin" ]; then
  osicon=""
fi
POWERLEVEL9K_CUSTOM_MYNAME="echo ' $osicon '"
POWERLEVEL9K_CUSTOM_MYNAME_FOREGROUND="white"
POWERLEVEL9K_CUSTOM_MYNAME_BACKGROUND="black"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

antigen theme denysdovhan/spaceship-prompt
antigen theme bhilburn/powerlevel9k powerlevel9k
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell Antigen that you're done.
antigen apply

# Aliases
alias ls='lsd'

# Fuzzy Finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# RubyGems
export GEM_HOME="$HOME/.gem"
