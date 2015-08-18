# --------------------------------------
# zsh
# --------------------------------------
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="nebirhos"
plugins=(git emacs rails ruby gem pow brew github osx rvm rake autojump bundler mysql zsh-syntax-highlighting)
# --------------------------------------
# path
# --------------------------------------
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
# --------------------------------------
# config
# --------------------------------------
LANG=zh_CN.UTF-8
LC_ALL=zh_CN.UTF-8
compinit
zle -N self-insert url-quote-magic
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
unsetopt correct_all
autoload -U compinit
autoload -U url-quote-magic
setopt EXTENDED_HISTORY
setopt AUTOLIST
setopt AUTOMENU
setopt MENU_COMPLETE
setopt AUTOPUSHD
export EDITOR=e
export SAVEHIST=$HISTSIZE
export HISTSIZE=2000
export HISTFILE="$HOME/.zshhistory"
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
# --------------------------------------
# alias
# --------------------------------------
alias e="emacsclient"
alias lg="gls -al | grep "
alias ls='gls --color=auto'
alias dir='gdir --color=auto'
alias grep='grep --color=auto'
alias git="hub"

