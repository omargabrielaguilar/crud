set scrolloff=8
set number
set relativenumber

set guicursor=
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="dark"
colorscheme ayu

let mapleader = " " 

nnoremap <leader>pv : Vex<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <C-p> :GFIles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
inoremap jk <esc>

