
set clipboard+=unnamedplus
set nocompatible
set nohlsearch
set number
syntax on

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" Reloads programs when config file is updated.
autocmd BufWritePost ~/.config/sxhkd/sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost ~/.config/termite/config !pkill -USR1 termite
autocmd BufWritePost ~/.config/picom/picom.conf !pkill -USR1 picom
