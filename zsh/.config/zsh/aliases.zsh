# Aliases

# X11
alias xpropc='xprop | grep WM_CLASS'

# General
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias rmd='rm -riv'
alias ls='ls --color=auto'
alias l='ls -l'
alias la='ls -la'
alias md='mkdir'
alias pg='ping 8.8.8.8'
alias vim='nvim'

# nmtui
alias wifi='nmtui'

# Configs
alias alaconfig='vim ~/.config/alacritty/alacritty.yml'
alias i3config='vim ~/.config/i3/config'
alias picomconfig='vim ~/.config/picom/picom.conf'
alias polybarconfig='vim ~/.config/polybar/config.ini'
alias zshrc='vim ~/.config/zsh/.zshrc'
alias sourcez='source $HOME/.config/zsh/.zshrc'
alias sourcea='source $HOME/.config/zsh/aliases.zsh'
alias sourceex='source $HOME/.config/zsh/exports.zsh'
alias aliases='vim ~/.config/zsh/aliases.zsh'
alias nvimc='~/.config/nvim/ && vim'

# Package Managers
# -- yay
alias yaycu='yay -Qum'            # check updates
alias yayu='yay -Syu'             # update
alias yayrs='yay -Rs'             # remove package with unused dependencies by other software

# -- pacman
alias pac='sudo pacman -S'        # install
alias pacls='sudo pacman -Qe'     # list explicitly installed packages
alias pacrs='sudo pacman -Rs'     # remove package with unused dependencies by other software
alias pacu='sudo pacman -Syu'   # update 

# Git aliases
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gl='git log'
alias glo='git log --pretty="oneline"'
alias gm='git merge'
alias gp='git push'
alias gpo='git push origin'
alias grmr='git rm -r'
alias gs='git status'

# Personal
alias dev='cd $HOME/dev'
alias notes='cd $HOME/.notes'
