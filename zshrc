# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="/usr/local/bin:$PATH"
export TERM="xterm-256color"
export FZF_DEFAULT_COMMAND='rg --hidden --no-ignore -l ""'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval $(thefuck --alias fuck)

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="theunraveler"

CASE_SENSITIVE="true"

plugins=(
  git
  osx
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
alias "dockerclean"="docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker images -f dangling=true"
alias be="bundle exec"
alias ber="bundle exec rspec"
alias gco="git checkout"
alias gp="git pull"
alias gs="git status"

# fnm
eval "$(fnm env --multi)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load local specific things
if [[ -a ~/.extensionsrc ]]; then
  source ~/.extensionsrc
fi

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
