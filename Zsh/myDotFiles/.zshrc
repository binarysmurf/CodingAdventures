setopt PROMPT_SUBST
setopt rmstarsilent

autoload -U promptinit && promptinit
setopt AUTO_CD

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Added setting this $TERM env var explicitly to facilitate 'glances' working with tmux

TERM="xterm-256color"
export TERM
set -g default-terminal "$TMUX"

export HOMEBREW_NO_ENV_HINTS=true
export HOMEBREW_NO_ANALYTICS=1
export MANPAGER="zsh -c 'col -bx | bat -l man -p'"
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR="nvim"
export MICRO_TRUECOLOR=1
export LESSHISTFILE=-
export KALI_NODE='37730818'
export LESS="-SXIFRs"


export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"

# General modifications to $PATH environment variable.

# export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/stevie/.bin:$PATH" # My own scripts, 

# Don't ask me what this does. It cleans up your $PATH enviroment variable via some black magic fuckery.

export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

# zsh plugins

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/sudo.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
test -e /Users/stevie/.iterm2_shell_integration.zsh && source /Users/stevie/.iterm2_shell_integration.zsh || true

# My personal aliases and functions.
source ~/.steve_aliases.sh
source ~/.steve_functions.sh

# Update Homebrew and delete local snapshots
WeeklyUpdate

# eval "$(oh-my-posh init zsh)"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/capr4n.omp.json)"
