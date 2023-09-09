# Enable colors
autoload -Uz colors && colors

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%B%F{yellow}[%F{yellow}EZRA%f %F{red}@%f %B%F{blue}MACHINA]%f%b %F{green}%B󰘧%b%f '
RPROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f'

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
setopt correct
setopt auto_menu
setopt menu_complete
unsetopt beep
bindkey -v
export KEYTIMEOUT=1
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ezra/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
source $HOME/.config/zsh/aliases.zsh

# Exports
source $HOME/.config/zsh/exports.zsh

# Plugins
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
