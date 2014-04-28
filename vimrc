set enc=utf-8

syntax on
colorscheme landscape
set t_Co=256

set grepprg=grep\ -nH
set helplang=ja

set number
set colorcolumn=80
set cursorline

set si
set expandtab tabstop=2 shiftwidth=2 shiftwidth=2
set ambiwidth=double

set list
set listchars=tab:>-,trail:-
set backspace=indent,eol,start
set wildmenu

set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set showcmd
set laststatus=2

" plugin - Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'itchyny/landscape.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'

filetype plugin indent on

" plugin - NERDTree
nnoremap <Space>n :<C-u>NERDTreeToggle<CR>

" plugin - airline
let g:airline_powerline_fonts=1

" plugin - easymotion
let g:EasyMotion_leader_key=';'
let g:EasyMotion_keys='hklyuiopnm,qwertzxcvbasdgjf;'
let g:EasyMotion_smartcase=1
let g:EasyMotion_use_migemo=1
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)
nmap <C-j> <Plug>(easymotion-sol-j)
nmap <C-k> <Plug>(easymotion-sol-k)
