# Default applications
export BROWSER=vimb
export EDITOR=nvim
export READER=zathura
export TERMINAL=termite
export VISUAL=nvim

# Exports to move certain files around
export LESSHISTFILE="-"
export PASSWORD_STORE_DIR="$HOME/vault/pass"
export PATH="$PATH:$HOME/.local/bin"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_DESKTOP_DIR="$HOME"
export XDG_DOWNLOAD_DIR="$HOME/downloads"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Startx on boot
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
