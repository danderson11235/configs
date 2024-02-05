let mapleader = " "
nnoremap <Leader>dv :Ex<CR>
nnoremap <Leader>hl = :noh<CR>
inoremap fj <Esc>
tnoremap <Esc> <C-\><C-n>
nnoremap <Leader>cw ciw()<Esc>P
nnoremap <Leader>bw ciw{}<Esc>P
inoremap  <C-w>
tnoremap  <C-w>
nnoremap <Leader>y \"*y
vnoremap <Leader>y \"*y
nnoremap <Leader>diw \"_diw
nnoremap <Leader>dw \"_dw
nnoremap <Leader>dd \"_dd
vnoremap <Leader>p \"_dP

set: colorcolumn=80
set: number
set: relativenumber
set: scrolloff=4

set: syntax=ON
set: termguicolors
set: ignorecase
set: smartcase

set: expandtab
set: shiftwidth=4
set: softtabstop=4
set: tabstop=4

set: eadirection=hor
