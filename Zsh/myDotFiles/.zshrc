setopt PROMPT_SUBST
autoload -U promptinit && promptinit
PROMPT='%(?.%F{green}√.%F{blue}?%?)%f %B%F{yellow}%~%f%b %B>%b '
RPROMPT='%*'

HISTFILE=~/.zsh_history
HISTSIZE=1000
HIST_STAMPS="dd/mm/yyyy"
SAVEHIST=1000

export HOMEBREW_NO_ENV_HINTS=true
export MANPAGER="zsh -c 'col -bx | bat -l man -p'"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='micro'
export MICRO_TRUECOLOR=1
export LESSHISTFILE=-

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"
export PATH="/usr/local/Cellar/python@3.10/3.10.4/bin:$PATH"

# General modifications to $PATH environment variable.

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/stevie/.bin:$PATH" # My own scripts, 

# Don't ask me what this does. It cleans up your $PATH enviroment variable via some black magic fuckery.

export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"
setopt rmstarsilent

# My personal aliases and functions.

source ~/.steve_aliases.sh
source ~/.steve_functions.sh

# Umm .. Update Homebrew?
updateHomebrew

# zsh plugins

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/sudo.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
