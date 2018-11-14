filetype off
execute pathogen#infect()
filetype plugin indent on

set nocompatible

syntax enable
set background=dark
colorscheme gruvbox

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:go_fmt_command="goimports"
let delimitMate_expand_cr=1
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

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

augroup ft_go
  au!

  au FileType go setlocal noexpandtab shiftwidth=8
augroup END

augroup ft_php
  au!

  au FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END

augroup ft_html
  au!

  au FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END

augroup vimrcEx
    au!

    autocmd FileType text setlocal textwidth=78

    autocmd BufWritePre * :%s/\s\+$//e
    autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   exe "normal g`\"" |
            \ endif
    autocmd BufRead *.md setlocal filetype=markdown
    autocmd BufRead *.markdown setlocal filetype=markdown
    autocmd FileType gitcommit setlocal spell textwidth=72
augroup END

nnoremap <leader><space> :noh<cr>
nmap <Leader>ev :tabedit $MYVIMRC<cr>
augroup autosourcing
autocmd!
  autocmd BufWritePost .vimrc source %
augroup END
