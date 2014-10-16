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
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'itchyny/landscape.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

call vundle#end()
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
