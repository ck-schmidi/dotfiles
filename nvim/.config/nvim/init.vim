call plug#begin('~/.config/nvim/plugged/')

set omnifunc=syntaxcomplete#Complete

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jamessan/vim-gnupg'

Plug 'fatih/vim-go'
"Plug 'freeo/vim-kalisi'
"Plug 'ervandew/supertab'
Plug 'rhysd/vim-go-impl'
"Plug 'lervag/vimtex'
"Plug 'vim-scripts/DrawIt'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'dylanaraps/wal.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fgsch/vim-varnish'


" vim-plug
"Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'elmcast/elm-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'danilo-augusto/vim-afterglow'
Plug 'warbear0129/vim-qtpl'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'phongnh/go-explorer'



call plug#end()

:map <ScrollWheelUp> <C-Y>
:map <S-ScrollWheelUp> <C-U>
:map <ScrollWheelDown> <C-E>
:map <S-ScrollWheelDown> <C-D>

"colorscheme afterglow

let mapleader=","

" NerdTree 
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeChDirMode = 2

autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" closes nerdtree automatically if you close last open file in vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" open NerdTree when opening vim by default
" au VimEnter * NERDTree
" autocmd VimEnter * wincmd p


" CtrlP 
let g:ctrlp_clear_cache_on_exit = 0

" active line-numbers
set number

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" syntax highlighting
syntax on

" backspace config
set backspace=indent,eol,start

" undo configuration
set undodir=~/.nvimundodir
set undofile
set undolevels=1000
set undoreload=10000

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:elm_syntastic_show_warnings = 1
" let g:elm_format_autosave = 1

" golang 
let g:go_fmt_command = "goimports"

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

au FileType go nmap <leader>gt :GoDef <cr>
au FileType go nmap <leader>gd :GoDoc <cr>
au FileType go nmap <leader>ga <Plug>(go-alternate-edit)
au FileType go nmap <leader>gah <Plug>(go-alternate-split)
au FileType go nmap <leader>gav <Plug>(go-alternate-vertical)
au FileType go nmap <leader>grt :GoTest <cr>
au FileType go nmap <leader>gr :GoRun<cr>


" au FileType go nmap <F12> <Plug>(go-def)

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1

let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_gocode_unimported_packages = 1
let g:go_snippet_engine = "neosnippet"


" deoplete
if has('nvim')
    " Enable deoplete on startup
    let g:deoplete#enable_at_startup = 1
    set completeopt-=preview
endif

function! SetNoNumberNoRelativeNumber()
    set norelativenumber
    set nonumber
endfunc

autocmd TermOpen * :call SetNoNumberNoRelativeNumber()
