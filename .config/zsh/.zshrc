
# options
setopt autocd

# exports
export DOMAIN=minskio.co.uk
export EMAIL=$(whoami)@$DOMAIN
export EXECIGNORE=*vamp*
export SYNCDIR="$HOME/vault"

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dotedit='find "$XDG_CONFIG_HOME" -maxdepth 2 -type f | fzf --preview "cat {}" --layout reverse | xargs -r "$EDITOR"'
alias dotfiles='git --git-dir="$SYNCDIR/src/dotfiles/" --work-tree="$HOME"'
alias screenoff='sleep 0.5s && xset dpms force off'

# functions
function fractodec() { echo "scale=2; $1" | bc ; }
function ytsearch() { mpv "ytdl://ytsearch:\"$1\"" ; }

# bindkeys

# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"      beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"       end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"    overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}" backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"    delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"        up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"      down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"      backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"     forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"    beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"  end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}" reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Oxide theme for Zsh by Diki Ananta <diki1aap@gmail.com>
setopt PROMPT_SUBST
autoload -U add-zsh-hook
autoload -Uz vcs_info
oxide_turquoise="%F{73}"
oxide_orange="%F{179}"
oxide_red="%F{167}"
oxide_limegreen="%F{107}"
oxide_reset_color="%f"
# VCS style formats.
FMT_UNSTAGED="%{$oxide_reset_color%} %{$oxide_orange%}●"
FMT_STAGED="%{$oxide_reset_color%} %{$oxide_limegreen%}✚"
FMT_ACTION="(%{$oxide_limegreen%}%a%{$oxide_reset_color%})"
FMT_VCS_STATUS="on %{$oxide_turquoise%} %b%u%c%{$oxide_reset_color%}"
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr    "${FMT_UNSTAGED}"
zstyle ':vcs_info:*' stagedstr      "${FMT_STAGED}"
zstyle ':vcs_info:*' actionformats  "${FMT_VCS_STATUS} ${FMT_ACTION}"
zstyle ':vcs_info:*' formats        "${FMT_VCS_STATUS}"
zstyle ':vcs_info:*' nvcsformats    ""
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
# Check for untracked files.
+vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
            git status --porcelain | grep --max-count=1 '^??' &> /dev/null; then
        hook_com[staged]+="%{$oxide_reset_color%} %{$oxide_red%}●"
    fi
}

# Executed before each prompt.
add-zsh-hook precmd vcs_info
# Oxide prompt style.
PROMPT=$'\n%{$oxide_limegreen%}%~%{$oxide_reset_color%} ${vcs_info_msg_0_}\n%(?.%{%F{white}%}.%{$oxide_red%})%(!.#.❯)%{$oxide_reset_color%} '
