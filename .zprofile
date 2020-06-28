# Exports to move certain files around
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export PASSWORD_STORE_DIR="$HOME/vault/pass"
export LESSHISTFILE="-"

# Startx on boot
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
