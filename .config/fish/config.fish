
# Disable greeting
set fish_greeting

# Default application
set -x BROWSER firefox
set -x EDITOR nvim
set -x READER zathura
set -x TERMINAL termite
set -x VISUAL $EDITOR

# Personal variables
set -x DOMAIN minskio.co.uk
set -x EMAIL (whoami)@$DOMAIN
set -x SYNCDIR $HOME/vault

# Exports to move certain files around
set -x LESSHISTFILE "-"
set -x PASSWORD_STORE_DIR "$HOME/vault/pass"
set -x PATH "$PATH:$HOME/.local/bin"
set -x XATHORITY "$XDG_RUNTIME_DIR/Xauthority"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_DESKTOP_DIR "$HOME"
set -x XDG_DOWNLOAD_DIR "$HOME/downloads"

# Command aliases
alias dotedit='find "$XDG_CONFIG_HOME" -maxdepth 2 -type f | fzf --preview "cat {}" --layout reverse | xargs -r "$EDITOR"'
alias dotfiles='git --git-dir="$SYNCDIR/src/dotfiles" --work-tree="$HOME"'
alias screenoff='sleep 0.5s && xset dpms force off'

# Functions
function fractodec; echo "scale=2; $argv" | bc; end
function ytsearch; mpv "ytdl://ytsearch:\"$argv\""; end

# Prompt, inspired by Oxide by Dikiaap
function fish_prompt; echo && set_color green; echo (dirs) && set_color normal; printf "❯ "; end

# Colour scheme
set -x fish_color_autosuggestion 585858
set -x fish_color_cancel \x2dr
set -x fish_color_command a1b56c
set -x fish_color_comment f7ca88
set -x fish_color_cwd green
set -x fish_color_cwd_root red
set -x fish_color_end ba8baf
set -x fish_color_error ab4642
set -x fish_color_escape 86c1b9
set -x fish_color_history_current \x2d\x2dbold
set -x fish_color_host normal
set -x fish_color_host_remote yellow
set -x fish_color_match 7cafc2
set -x fish_color_normal normal
set -x fish_color_operator 7cafc2
set -x fish_color_param d8d8d8
set -x fish_color_quote f7ca88
set -x fish_color_redirection d8d8d8
set -x fish_color_search_match bryellow\x1e\x2d\x2dbackground\x3dbrblack
set -x fish_color_selection white\x1e\x2d\x2dbold\x1e\x2d\x2dbackground\x3dbrblack
set -x fish_color_status red
set -x fish_color_user brgreen
set -x fish_color_valid_path \x2d\x2dunderline
set -x fish_greeting \x1d
set -x fish_key_bindings fish_default_key_bindings
set -x fish_pager_color_completion normal
set -x fish_pager_color_description B3A06D\x1eyellow
set -x fish_pager_color_prefix white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -x fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan

# Start X at login
if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec startx -- -keeptty
    end
end
