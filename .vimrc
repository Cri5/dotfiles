set modelines=1

"Default shell
set shell=/bin/bash

" Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Vundle {{{
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'yosiat/oceanic-next-vim'
Plugin 'sjl/gundo.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" Color scheme {{{
set background=dark
syntax enable
" }}}

" Basic
set number "line numbering
set relativenumber "relative numbering

function TRelative()
	set relativenumber!
endfunc

set wildmenu " Visual autocomplete for command menu
set lazyredraw
set showmatch
set incsearch           " search as characters are entered
set hlsearch 

" move vertically by visual line
nnoremap j gj
nnoremap k gk
inoremap jk <esc> " jk is escape

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

nnoremap <leader>a :Ag " ag.vim ,a


" Tmux {{{
" allows cursor change in tmux mode
 if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
 else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
" }}}
" CtrlP {{{
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}
" NERDtree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}

" vim:foldmethod=marker:foldlevel=0
