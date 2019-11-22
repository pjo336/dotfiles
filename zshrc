export PATH="/usr/local/bin:$PATH"
export TERM="xterm-256color"
eval "$(rbenv init -)"
eval $(thefuck --alias fuck)

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

CASE_SENSITIVE="true"

plugins=(
  git
  bundler
  osx
  rake
  ruby
  zsh-completions
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

autoload -U compinit
compinit

alias ctags="`brew --prefix`/bin/ctags"
alias dc="docker-compose"
alias be="bundle exec"

# fnm
eval "$(fnm env --multi)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load local specific things
if [[ -a ".extensionsrc" ]]; then
  source ".extensionsrc"
fi

