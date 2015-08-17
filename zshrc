# ------------------------------------------------------------------------------
# Venom's Oh-My-Zsh Configure
# Web Sites : http://venmos.com
# Contact : venmos[at]fuck.gfw.es
# ------------------------------------------------------------------------------


LANG=en_US.UTF-8
LC_ALL=en_US.UTF-8

export ZSH=$HOME/.oh-my-zsh
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="venmos"
source $ZSH/oh-my-zsh.sh
plugins=(git emacs rails ruby gem pow brew github osx rvm rake autojump bundler mysql zsh-syntax-highlighting)

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

unsetopt correct_all

export EDITOR=e

export SAVEHIST=$HISTSIZE

setopt EXTENDED_HISTORY

export HISTSIZE=2000

export HISTFILE="$HOME/.zshhistory"

autoload -U compinit
compinit
setopt AUTOLIST
setopt AUTOMENU
setopt MENU_COMPLETE
setopt AUTOPUSHD

autoload -U url-quote-magic
zle -N self-insert url-quote-magic

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

hash -d _project="/Users/venmos/Project.localized"

alias loadzshconfig='source ~/.zshrc'
alias e="emacs -Q $*"