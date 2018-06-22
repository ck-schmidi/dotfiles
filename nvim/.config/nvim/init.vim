call plug#begin('~/.config/nvim/plugged/')

set omnifunc=syntaxcomplete#Complete

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jamessan/vim-gnupg'

Plug 'fatih/vim-go'
Plug 'freeo/vim-kalisi'
Plug 'ervandew/supertab'
Plug 'rhysd/vim-go-impl'
Plug 'lervag/vimtex'
Plug 'vim-scripts/DrawIt'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dylanaraps/wal.vim'



" vim-plug
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'elmcast/elm-vim'

call plug#end()

"colorscheme kalisi
colorscheme wal
"set background=dark

map <C-n> :NERDTreeToggle<CR>

" active line-numbers
set number

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" syntax highlighting
syntax on

" backspace config
set backspace=indent,eol,start

" golang config
let g:go_fmt_command = "goimports"

" neocomplete like
set completeopt+=noinsert
" deoplete.nvim recommend
set completeopt+=noselect

" Path to python interpreter for neovim
let g:python3_host_prog  = '/usr/bin/python3'
" Skip the check of neovim module
let g:python3_host_skip_check = 1

" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
"let g:deoplete#sources#go#json_directory = '/path/to/data_dir'
"
set undodir=~/.nvimundodir
set undofile
set undolevels=1000
set undoreload=10000

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

let g:elm_format_autosave = 1

