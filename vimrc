set encoding=utf-8
scriptencoding utf-8

colorscheme landscape
set t_Co=256

set grepprg=grep\ -nH
set helplang=ja

set number
set colorcolumn=80
highlight ColorColumn ctermbg=red
set cursorline

set expandtab tabstop=2 shiftwidth=2 shiftwidth=2
set ambiwidth=double

set list
set listchars=tab:>-,trail:-
set backspace=indent,eol,start
set wildmenu
set wildmode=list:full

set hlsearch
nnoremap <C-L> :nohl<CR><C-L>
set showcmd
set laststatus=2

set completeopt=menuone,preview

" golang
set runtimepath+=$GOROOT/misc/vim
autocmd BufWritePre *.go Fmt
autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow
autocmd BufWritePost *.go call system("/usr/local/bin/ctags -aR -f ~/.tags")
set tags=~/.tags

" plugin - Vundle
filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-jp/vimdoc-ja'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'itchyny/landscape.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'nsf/gocode', {'runtimepath': 'vim/'}
Plugin 'golang/lint', {'runtimepath': 'misc/vim/'}
Plugin 'thinca/vim-quickrun'
Plugin 'Shougo/vimproc.vim'

call vundle#end()
filetype plugin indent on

" syntax
syntax on

" plugin - NERDTree
nnoremap <Space>n :<C-u>NERDTreeToggle<CR>

" plugin - airline
let g:airline_powerline_fonts=1

" plugin - easymotion
let g:EasyMotion_keys='awsedf;olikj'
let g:EasyMotion_smartcase=1
let g:EasyMotion_use_migemo=1
nmap s <Plug>(easymotion-s)
vmap s <Plug>(easymotion-s)
nmap <C-j> <Plug>(easymotion-sol-j)
nmap <C-k> <Plug>(easymotion-sol-k)

" plugin - quickrun
nnoremap <Space>qq :<C-u>QuickRun<CR>
let g:quickrun_config = {}
let g:quickrun_config._ = {'runner': 'vimproc'}
let g:quickrun_config['go.test'] = {'exec': 'go test -v'}
augroup GoTest
  autocmd!
  autocmd BufWinEnter,BufNewFile *_test.go set filetype=go.test
augroup END
