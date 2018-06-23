filetype off
execute pathogen#infect()
filetype plugin indent on

set nocompatible

syntax enable
set background=dark
colorscheme vividchalk

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:go_fmt_command="goimports"

augroup vimrcEx
    au!

    autocmd FileType text setlocal textwidth=78

    autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
    autocmd BufRead *.md setlocal filetype=markdown
    autocmd BufRead *.markdown setlocal filetype=markdown
    autocmd BufRead *.c setlocal noet sws=4 sw=4
    autocmd FileType gitcommit setlocal spell textwidth=72
augroup END

set backspace=indent,eol,start
set autoindent
set history=50
set ruler
set showcmd
set incsearch
set showmatch
set hlsearch
set number
set relativenumber
set wildmode=list:longest

set expandtab
set shiftwidth=2
set softtabstop=2

set colorcolumn=81

set scrolloff=2
set laststatus=2

let mapleader=","

nnoremap <leader><space> :noh<cr>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
augroup autosourcing
autocmd!
  autocmd BufWritePost .vimrc source %
augroup END
