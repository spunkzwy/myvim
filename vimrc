" define base
set nocompatible
filetype off
set nu
set ruler
set showcmd
let mapleader="'"

" config tab key
set tabstop=4        "number of visual spaces per TAB
set softtabstop=4    "number of spaces in TAB when editing
set expandtab        "TABS are spaces
set shiftwidth=4

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/altercation/solarized.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'https://github.com/saltstack/salt-vim.git'
Plugin 'https://github.com/tpope/vim-surround.git'
Plugin 'majutsushi/tagbar'
Plugin 'ctags.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
call vundle#end()            " required
filetype plugin indent on    " required

""" set plugin nmap
" tagbar
map <C-m> :TagbarToggle<CR>
" nerdtree
map <C-n> :NERDTreeToggle<CR>
" ??
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" python-mode
let g:pymode_rope_goto_definition_bind = "<C-]>"
let g:pymode_run_bind = "<C-S-e>"
let g:pymode_doc_bind = "<C-S-d>"
call pymode#default('g:pymode_rope_autoimport', 0)
let g:pymode_folding = 0

""" define common short key
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]b :blast<CR>
nnoremap q :q<CR>
