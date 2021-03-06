# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"

setopt PROMPT_SUBST
setopt rmstarsilent

autoload -U promptinit && promptinit

# PROMPT='%F{purple}☯%f %(?.%F{green}√.%F{blue}?%?)%f %B%F{yellow}%~%f%b %B>%b '
# RPROMPT='%*'

setopt APPEND_HISTORY
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt AUTO_CD

# Added setting this $TERM env var explicitly to facilitate 'glances' working with tmux

TERM="xterm-256color"
export TERM
set -g default-terminal "$TMUX"

export HOMEBREW_NO_ENV_HINTS=true
export MANPAGER="zsh -c 'col -bx | bat -l man -p'"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="micro"
export MICRO_TRUECOLOR=1
export LESSHISTFILE=-

# export LDFLAGS="-L/usr/local/opt/ruby/lib"
# export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"

# General modifications to $PATH environment variable.

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/stevie/.bin:$PATH" # My own scripts, 

# Don't ask me what this does. It cleans up your $PATH enviroment variable via some black magic fuckery.

export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

# My personal aliases and functions.

source ~/.steve_aliases.sh
source ~/.steve_functions.sh

# Update Homebrew and delete local snapshots

WeeklyUpdate

# zsh plugins

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/sudo.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
