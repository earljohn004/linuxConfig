set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize set
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
"Plugin 'tomasr/molokai'
" Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
"Plugin 'hari-rangarajan/CCTree' "works for C Code only. Function Trace
"Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-scripts/snipMate'
Plugin 'majutsushi/tagbar'
"Plugin 'hari-rangarajan/CCTree' "works for C Code only. Function Trace
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
"set encoding=euc-jp
set tags=tags;/ 

"Custom Vim Map
inoremap jk <Esc>
map <F7> :tabn <CR>
nnoremap <silent> <F9> :TagbarToggle<CR>

" nerdtree
	au BufNewFile,BufRead nerdtree_* set filetype=txt
	let g:NERDTreeWinPos ="right"
	let g:NERDTreeCreatePrefix="nerdtree_"
	let g:NERDTreeDirArrowExpandable="+"
	let g:NERDTreeDirArrowCollapsible="~"
	hi Directory guifg=#ff0000 ctermfg=darkcyan
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | exe 'NERDTree' | endif
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
	" F4 to toggle nerdtree
	noremap <F4> :NERDTreeToggle<CR>

syntax on
" set t_Co=256
set term=screen-256color
" colorscheme fu
colorscheme fu
hi CursorLine cterm=Underline term=underline
let g:neocomplete#enable_at_startup=1

"let  g:UltiSnipsSnippetDirectories=["Ultisnips","~/.vim/bundle/vim-snippets/Ultisnips/"]
"
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0
let g:neocomplete#enable_at_startup=1                                                        
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='base16_summerfruit'
