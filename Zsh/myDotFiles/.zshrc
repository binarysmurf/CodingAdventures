setopt PROMPT_SUBST
setopt rmstarsilent

autoload -U promptinit && promptinit

# local host_name="%{$fg[cyan]%}λ"
# local path_string="%{$fg[yellow]%}%~"
# local prompt_string="»"
# local return_status="%(?:%{$fg[blue]%}$prompt_string:%{$fg[red]%}$prompt_string)"

# PROMPT='${host_name} ${path_string} ${return_status} %{$reset_color%}'

PROMPT='%F{purple}☯%f %(?.%F{green}√.%F{blue}?%?)%f %B%F{yellow}%~%f%b %B>%b '
RPROMPT='%*'

HISTFILE=~/.zsh_history
HISTSIZE=1000
HIST_STAMPS="dd/mm/yyyy"
SAVEHIST=1000

setopt APPEND_HISTORY
setopt AUTO_CD
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY

set -g default-terminal "$TMUX"

export HOMEBREW_NO_ENV_HINTS=true
export MANPAGER="zsh -c 'col -bx | bat -l man -p'"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'
export MICRO_TRUECOLOR=1
export LESSHISTFILE=-

# Added setting this $TERM env var explicitly to facilitate 'glances' working with tmux

TERM="xterm-256color"
export TERM


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
