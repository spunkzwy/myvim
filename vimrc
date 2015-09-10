set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'https://github.com/altercation/solarized.git'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'https://github.com/klen/python-mode.git'
Plugin 'majutsushi/tagbar'
Plugin 'ctags.vim'
call vundle#end()            " required
filetype plugin indent on    " required

"set plugin autocmd
"autocmd vimenter * NERDTree

"set plugin nmap
map <C-m> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>

"set python-mode
" this lin is python-mode bind shortcut
" Override go-to.definition key shortcut to Ctrl-]
"let g:pymode_rope_goto_definition_bind = "<C-]>"
"
" " Override run current python file key shortcut to Ctrl-Shift-e
"let g:pymode_run_bind = "<C-S-e>"
"
" " Override view python doc key shortcut to Ctrl-Shift-d
"let g:pymode_doc_bind = "<C-S-d>"
call pymode#default('g:pymode_rope_autoimport', 0)
let g:pymode_folding = 0


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set nu

