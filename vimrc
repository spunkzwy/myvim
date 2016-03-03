" Use the Solarized Dark theme
syntax enable
set background=dark
colorscheme solarized
" define base
set nocompatible
set ignorecase
set smartcase
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
Plugin 'https://github.com/majutsushi/tagbar.git'
Plugin 'git://github.com/rodjek/vim-puppet.git'
Plugin 'bling/vim-airline'
Plugin 'ctags.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdcommenter'
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
" airline
let g:airline_powerline_fonts = 1
" let g:airline_section_a = mode
set laststatus=1
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
""" define common short key
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]b :blast<CR>
nnoremap q :q<CR>
nnoremap <Leader>tt :TagbarToggle<CR>
nnoremap <Leader>nn :NERDTreeToggle<CR>
