set nocompatible
set hlsearch
filetype off
set number
set backspace=2
set noswapfile
let g:go_version_warning = 0
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
syntax on
" set term=xterm-256color

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ervandew/supertab'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'jremmen/vim-ripgrep'

" Color schemes
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'rakr/vim-one'
Plugin 'liuchengxu/space-vim-dark'

" Language specific stuff
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'styled-components/vim-styled-components', {'branch': 'main'}
Plugin 'moll/vim-node'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'w0rp/ale'
Plugin 'elzr/vim-json'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

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
let g:material_theme_style = 'dark'
set background=dark
" colorscheme material
colorscheme space-vim-dark
hi Comment cterm=italic
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Cursor options
" let &t_SI = "\<esc>[5 q purple\x7"  " blinking I-beam in insert mode
" let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
" let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" set esckeys

" Key remaps
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-S-e> :NERDTree<CR>
nnoremap <silent> <C-S-f> :Rg

" Ale configuration
let g:ale_lint_on_save = 1
let g:ale_set_loclist = 1

let g:ale_fixers = {
\  'ruby': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'rubocop'
\  ]
\}
let g:ale_linters = {'ruby': ['rubocop', 'ruby']}
let g:ale_ruby_rubocop_executable = 'bin/rubocop'
let g:ruby_indent_assignment_style = 'variable'

" vim-ruby
let g:ruby_indent_access_modifier_style = 'normal'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'

