
" Set options
set nocompatible
let mapleader =","
set backspace=indent,eol,start
set clipboard+=unnamedplus
set ignorecase
set linebreak
set mouse=a
set nohlsearch
set number
set smartcase
set title
set titlestring=%f\ %m
syntax on

" Key remapping
map <C-H> <C-W>
map <C-Del> X<Esc>ce<del>
map <F8> :setlocal spell! spelllang=en_gb<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" Reloads programs when config file is updated.
autocmd BufWritePost ~/.config/picom/picom.conf !pkill -USR1 picom
autocmd BufWritePost ~/.config/polybar/config !pkill -USR1 polybar
autocmd BufWritePost ~/.config/sxhkd/sxhkdrc !pkill -USR1 sxhkd
autocmd BufWritePost ~/.config/termite/config !pkill -USR1 termite
