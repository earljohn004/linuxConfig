set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize set
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomasr/molokai'
Plugin 'SirVer/ultisnips'
"Plugin 'vim-scripts/snipMate'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"


set incsearch
set hlsearch
set nu
let g:molokai_original=1
set smartindent
set showmatch
set tabstop=4
set shiftwidth=4
set softtabstop=4
"colorscheme molokai
"colorscheme fu
"set background=dark
"let g:solarized_termcolors=256
set t_Co=256
"colorscheme solarized
colorscheme fu
set cursorline 
hi CursorLine cterm=Underline term=underline
inoremap ( ()<Esc>i
inoremap { {<CR><CR>}<Esc>ki
inoremap [ []<Esc>i
imap jk <Esc>

syntax on
let g:neocomplete#enable_at_startup=1
