set nocompatible
filetype off
set number
set backspace=2
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
syntax on
set term=xterm-256color
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'

" Color schemes
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'rakr/vim-one'
" Language specific stuff
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'styled-components/vim-styled-components', {'branch': 'main'}
Plugin 'moll/vim-node'
Plugin 'leafgarland/typescript-vim'
Plugin 'herringtondarkholme/yats.vim'
Plugin 'elzr/vim-json'
Plugin 'git://git.wincent.com/command-t.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line

autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" COLOR SETTINGS
" Enable true colors
if (has("termguicolors"))
  set termguicolors
endif
let g:material_theme_style = 'default'
set background=dark
colorscheme material
" let g:airline_theme='one'
" colorscheme one
" set background=dark
