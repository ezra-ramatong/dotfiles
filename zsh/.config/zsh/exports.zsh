
# Default Programs
export EDITOR="nvim"
export VISUAL="$EDITOR"
export TERMINAL="alacritty"
export BROWSER="firefox"
export GIT_EDITOR="$EDITOR"

# History
export HISTFILE=~/.cache/zsh/history
export HISTSIZE=10000
export SAVEHIST=10000

# Paths
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/rofi/scripts:$PATH" # Rofi Applets, Launchers and Powermenu scrips
export PATH="$(go env GOBIN):$(go env GOPATH)/bin:$PATH"
