# zmodload zsh/zprof
setopt PROMPT_SUBST
setopt rmstarsilent

# autoload -Uz compinit && compinit
# autoload -Uz bashcompinit && bashcompinit
autoload -Uz promptinit && promptinit

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
export LESS="-SXIFRs"

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.0/bin:$PATH"

# Created by `pipx` on 2022-10-24 02:37:09
export PATH="$PATH:/Users/stevie/.bin"
export PATH="$PATH:/Users/stevie/.local/bin"

# Don't ask me what this does. It cleans up your $PATH enviroment variable via some black magic fuckery.

export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.10/bin"
export PATH="$(perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, $ENV{PATH}))')"

# Must have zsh plugins

source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/plugins/sudo.plugin.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
test -e /Users/stevie/.iterm2_shell_integration.zsh && source /Users/stevie/.iterm2_shell_integration.zsh || true

# My personal aliases and functions.
source ~/.my_functions.sh
source ~/.my_aliases.sh

# Update Homebrew and delete local snapshots
WeeklyUpdate

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# eval "$(register-python-argcomplete pipx)"
eval "$(starship init zsh)"
# zprof
