
# Disable greeting
set fish_greeting

# Disable command not found handler
function __fish_command_not_found_handler --on-event fish_command_not_found; echo "fish: Unknown command '$argv'"; end

# Default application
set -gx BROWSER qutebrowser
set -gx EDITOR nvim
set -gx READER mupdf
set -gx TERMINAL alacritty
set -gx VISUAL $EDITOR

# Personal variables
set -gx DOMAIN minskio.co.uk
set -gx EMAIL (whoami)@$DOMAIN
set -gx SYNCDIR $HOME/vault

# Exports to move certain files around
fish_add_path "$HOME/.local/bin"
set -gx GNUPGHOME "$XDG_DATA_HOME/gnupg"
set -gx LESSHISTFILE "-"
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_DESKTOP_DIR "$HOME"
set -gx XDG_DOWNLOAD_DIR "$HOME/downloads"
alias scp='scp -F "$XDG_CONFIG_HOME/ssh/config"'
alias ssh='ssh -F "$XDG_CONFIG_HOME/ssh/config"'

# Command aliases
alias crontab='$EDITOR "$XDG_CONFIG_HOME/cron/crontab" && /usr/bin/crontab "$XDG_CONFIG_HOME/cron/crontab"'
alias dotedit='find "$XDG_CONFIG_HOME" "$HOME/.local/bin" -maxdepth 2 -type f | fzf --preview "cat {}" --layout reverse | xargs -r "$EDITOR"'
alias dotfiles='git --git-dir="$SYNCDIR/src/dotfiles" --work-tree="$HOME"'
alias empties='find . -maxdepth 3 -mount -not -path "*/\.*" -empty'
alias mpv-hdmi='mpv --fs --audio-device=alsa/hdmi:CARD=PCH,DEV=0'
alias screenoff='sleep 0.5s && pkill -USR1 swayidle'
alias todo='$EDITOR (find "$SYNCDIR" -maxdepth 5 -type f -name 'todo.txt')'
alias vaultedit='find "$SYNCDIR" -maxdepth 5 -type f | fzf --preview "cat {}" --layout reverse | xargs -r -I{} "$EDITOR" "{}"'

# Functions
function backupdir; tar -cf - "$argv" -P | pv -s (du -sb "$argv" | awk '{print $1}') | gzip > "$argv"_backup-(date +%F-%H%M).tar.gz ; end
function cheat; curl -s "http://cheat.sh/$argv"; end
function fractodec; math -s2 "$argv" ; end
function hextodec; math "0x$argv" ; end
function mcd; mkdir -p "$argv" && cd "$argv" ; end
function macaddr; printf "%s\n" (curl -s https://api.macvendors.com/$argv); end
function mergeinto; rsync --progress --remove-source-files -av "$argv[1]" "$argv[2]" && find "$argv[1]" -empty -delete ; end
function mount-rw; sudo mount -o rw "$argv[1]" "$argv[2]"; end
function sessionexec; awk -v site="$argv[1]" '$0~site {print $2}' "$XDG_DATA_HOME/qutebrowser/sessions/default.yml"; end
function split; ffmpeg -i "$argv[1]" -ss "$argv[2]" -to "$argv[3]" -c copy split-$argv[1]; end
function sudo; if test "$argv" = !!; eval command sudo $history[1]; else; command sudo $argv; end; end
function vat; math "$argv + ($argv * 0.2)"; end
function wallet; rbw get "2miners" | atto "$argv"; end
function ytsearch; mpv "ytdl://ytsearch:\"$argv\""; end

# Rclone config symlink
if ! test -e "$XDG_CONFIG_HOME/rclone/rclone.conf"; and test -f "$SYNCDIR/src/dockerfiles/rclone.conf"; ln -s "$SYNCDIR/src/dockerfiles" "$XDG_CONFIG_HOME/rclone"; end

# Prompt, inspired by Oxide by Dikiaap
function fish_prompt; echo && set_color green; echo (dirs) && set_color normal; printf "❯ "; end

# Keybinds
bind \cH backward-kill-path-component
bind \e\[3\;5~ kill-word

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
set -x fish_key_bindings fish_default_key_bindings
set -x fish_pager_color_completion normal
set -x fish_pager_color_description B3A06D\x1eyellow
set -x fish_pager_color_prefix white\x1e\x2d\x2dbold\x1e\x2d\x2dunderline
set -x fish_pager_color_progress brwhite\x1e\x2d\x2dbackground\x3dcyan

# Start sway at login
if test (tty) = "/dev/tty1"; exec sway; end
