
" Set options
set nocompatible
set clipboard+=unnamedplus
set ignorecase
set nohlsearch
set number
set smartcase
set mouse=a
syntax on

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" Reloads programs when config file is updated.
autocmd BufWritePost ~/.config/picom/picom.conf !pkill -USR1 picom
autocmd BufWritePost ~/.config/polybar/config !pkill -USR1 polybar
autocmd BufWritePost ~/.config/sxhkd/sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost ~/.config/termite/config !pkill -USR1 termite
