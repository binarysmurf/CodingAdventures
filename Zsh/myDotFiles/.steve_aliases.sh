#!/bin/bash

# My aliases: Feb - Aug 2022. By Steve. So fuck off. 😀

# Directory navigation and related aliases.

alias ols='/bin/ls'
alias ola='/bin/ls -la'
alias oll='/bin/ls -l'

alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -lA'
alias lt='lsd -l --total-size --sizesort'
alias lta='lsd -lA --total-size --sizesort'

# General QoL

alias hd='cd;clear'
alias sd='cd ~/Scratch\ Directory;clear'
alias dx='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents;clear'
alias dk='cd ~/Desktop;clear'
alias dl='cd ~/Downloads;clear'
alias bd='cd ~/.bin;clear'
alias px='cd ~/Pictures;clear'
alias gd='cd ~/Geekery/Github;clear'
alias pd='cd ~/Geekery/Coding/Python;clear'
alias ld='cd ~/Geekery/Linux;clear'

alias hg='history | grep'
alias ag='alias | grep'

# System Commands / Shell Scripts.

alias duf="duf --hide-mp '*machine*' --hide special"
alias df="df -PH|egrep -v '(devfs|Preboot|VM|Update|xarts|iSCPreboot|Hardware|auto_home|com.apple.TimeMachine)'"
alias dls='tmutil deletelocalsnapshots /Volumes/Internal\ HD'
alias dew='sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES && sudo pkill diskarbitrationd'
alias eew='sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool NO && sudo pkill diskarbitrationd'

alias spb_off='defaults write com.apple.systempreferences AttentionPrefBundleIDs 0 && killall Dock'
alias spb_on='defaults write com.apple.systempreferences AttentionPrefBundleIDs 1 && killall Dock'

alias cls='clear'
alias cat='bat'
alias penv='printenv | sort'
alias clds='find . -name ".DS_Store" -delete'
alias clud='find . -name ".updatedone" -delete'
alias cll='find . -name ".localized" -delete'

alias showhf='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder'
alias hidehf='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder'

alias soa='defaults write com.apple.dock static-only -bool true; killall Dock'
alias saa='defaults write com.apple.dock static-only -bool false; killall Dock'
alias spm='defaults write com.apple.dock single-app -bool true; killall Dock'
alias mpm='defaults write com.apple.dock single-app -bool false; killall Dock'
alias spd="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'; killall Dock"

alias root_off='sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool FALSE'
alias root_on='sudo defaults write /Library/Preferences/com.apple.loginwindow SHOWOTHERUSERS_MANAGED -bool TRUE'
alias oa='open -a'
alias op='open -a Preview'
alias ts='tmux new -s'
alias ta='tmux attach'

# Editor related.

alias mc='micro'
alias nv='nvim'
alias ed='${EDITOR}'
alias sm="export EDITOR='micro'"
alias sn="export EDITOR='nvim'"

alias mhdd='sudo mkdir /Volumes/EFI_HDD; sudo mount -t msdos /dev/disk1s1 /Volumes/EFI_HDD'
alias mssd='sudo mkdir /Volumes/EFI_SSD; sudo mount -t msdos /dev/disk0s1 /Volumes/EFI_SSD'

alias nuke='nuke.sh'
alias cv="convert2mp4.sh"
alias rv="repackage2mp4.sh"
alias ca="convert2aac.sh"
alias cf="convert2flac.sh"
alias cc='copyconfigs.sh'
alias cb='cleanbuild.sh'
alias gic='generateIcons.sh'
alias gs='google-search.sh'
alias icat='imgcat.sh'
alias uv='upscale.sh'
alias mp='man_preview.sh'
alias css='cp ~/.bin/*.sh ~/Geekery/Github/CodingAdventures/Zsh/myShellScripts/'
alias gl='glances -2'

# Python 3.x

alias python='python3'
alias pv='python3 --version'
alias pip='pip3'
alias pa='pip-autoremove'

# Edit/reload .dotfiles.
	
alias ez='${EDITOR} ${ZDOTDIR:-$HOME}/.zshrc' # Edit zsh config
alias ea='${EDITOR} ${ZDOTDIR:-$HOME}/.steve_aliases.sh' # Edit personalised aliases
alias ef='${EDITOR} ${ZDOTDIR:-$HOME}/.steve_functions.sh' # Edit personalised functions
alias sz='source ~/.zshrc; clear' # Reload zsh config, which references all of the above .dotfiles

# Find Wifi and hardwired IP.

alias wfip='ipconfig getsummary en1 | grep ciaddr'
alias ethip='ipconfig getsummary en0 | grep ciaddr'

# Homebrew.

alias brin='brew install'
alias brun='brew uninstall'
alias brup='brew update; brew upgrade; brew doctor'
alias brrm='brew uninstall'
alias bra='brew autoremove'
alias bbd='brew bundle dump'
alias brcl='brew cleanup --prune=all'
alias medic='brew cleanup --prune=all; brew doctor'


# Misc.

alias imgdim='sips -g pixelHeight -g pixelWidth'
alias pcolors='for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done'
alias ot='other-transcode'
alias yg='you-get'
alias og='open -a gifski'
