set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rakr/vim-one'
Plugin 'vim-python/python-syntax'
Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'ryanoasis/vim-devicons'

call vundle#end()

syntax on

" Esquema de color para vim
" =============================================================
" Configuración para color de esquema material.
"
set background=dark
let g:one_allow_italics = 1
""let g:github_colors_soft = 1

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511

if (has("termguicolors"))
    set termguicolors
endif

" ==============================================================

filetype plugin indent on

" Configuración para usar PEP8

au BufNewFile,BufRead *.py
    \ set expandtab | " convierte tab en espacios.
    \ set fileformat=unix

" Ancho en espacios de un tab.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set encoding=UTF-8

syntax enable


" Indentar automáticamente.=5
set autoindent

" Mostrar número de línea
set number

" Muestra líena debajo del cursor.
set cursorline

" Muestra la pareja de [] {} y ()
set showmatch

" Activa python highlight
let python_highlight_all = 1

" Tamaño por defecto del terminal
set termwinsize=10x0

" encoding
set encoding=utf-8

" Configurando <leader> shortcut
let mapleader = ","

" Keymaps
" =====================================
" Abrir NerdTree
map <C-b> :NERDTreeToggle<CR>

" Abrir terminal
map <F2> :belowright terminal<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Saltar al final de la línea
inoremap <C-e> <C-o>$

" =====================================
augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END

" for transparent background
function! AdaptColorscheme()
   highlight clear CursorLine
   highlight Normal ctermbg=none
   highlight LineNr ctermbg=none
   highlight Folded ctermbg=none
   highlight NonText ctermbg=none
   highlight SpecialKey ctermbg=none
   highlight VertSplit ctermbg=none
   highlight SignColumn ctermbg=none
endfunction
autocmd ColorScheme * call AdaptColorscheme()

highlight Normal guibg=NONE ctermbg=NONE
highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
highlight clear LineNr
highlight clear SignColumn
highlight clear StatusLine


" Change Color when entering Insert Mode
autocmd InsertEnter * set nocursorline

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * set nocursorline

"" extra settings, uncomment them if necessary :)
"set cursorline
"set noshowmode
"set nocursorline

" trasparent end

"vim autosave
augroup autosave
    autocmd!
    autocmd BufRead * if &filetype == "" | setlocal ft=text | endif
    autocmd FileType * autocmd TextChanged,InsertLeave <buffer> if &readonly == 0 | silent write | endif
augroup END
