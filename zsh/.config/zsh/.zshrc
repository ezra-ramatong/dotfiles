# Autoload
autoload -Uz colors && colors           # enable colors
autoload -Uz add-zsh-hook
autoload -Uz vcs_info
precmd() { vcs_info }
autoload -Uz compinit
compinit
zstyle :compinstall filename '/home/ezra/.zshrc'

zstyle ':vcs_info:git:*' formats '%b '
# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '( %b%u%c)'
zstyle ':vcs_info:git:*' actionformats '( %b|%a%u%c)'

zstyle ':completion:*' menu select

# Options
setopt PROMPT_SUBST
PROMPT='%B%F{yellow}[%F{yellow}EZRA%f %F{red}@%f %B%F{blue}MACHINA]%f%b %F{green}%B󰘧%b%f '
RPROMPT='%F{blue}%~%f %F{red} ${vcs_info_msg_0_}%f'
setopt autocd
setopt correct
setopt auto_menu
setopt menu_complete
unsetopt beep
bindkey -v
export KEYTIMEOUT=1

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
source $HOME/.config/zsh/aliases.zsh

# Exports
source $HOME/.config/zsh/exports.zsh

# Plugins
source $HOME/.config/zsh/plugins/bd/bd.zsh
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # must be last
