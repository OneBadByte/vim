set nocompatible           " be iMproved, required
filetype off               " required
syntax on
set nu
set clipboard=unnamedplus
set encoding=utf-8
set expandtab
set shiftwidth=4
set softtabstop=4
set spell spelllang=en_us
filetype plugin indent on

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'

" java bs
Plugin 'javacomplete'

Plugin 'tpope/vim-fugitive'

" syntax checking and autocompletion
Plugin 'scrooloose/syntastic'
Plugin 'valloric/youcompleteme'

" rust plugins
Plugin 'rust-lang/rust.vim'
Plugin 'phildawes/racer'

" Color scheme controller
Plugin 'flazz/vim-colorschemes'

" plugin for viewing file system
Plugin 'scrooloose/nerdtree'

" auto complete plugins for saving and for adding brackets
Plugin 'jiangmiao/auto-pairs'
Plugin '907th/vim-auto-save'

" html and css plugins
Plugin 'othree/html5.vim'
Plugin 'alvan/vim-closetag'
Plugin 'digitaltoad/vim-pug'

"kotlin
Plugin 'udalov/kotlin-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"colorscheme SweetCandy
colorscheme Chasing_Logic

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
"

"___________________nerdtree_________________________

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

" ______________synaptic crap________________________
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:mustache_abbreviations = 1
" ______________synaptic crap________________________
"
let g:mustache_operators = 0

" _______________vim-auto-save______________________
let g:auto_save = 1  " enable AutoSave on Vim startup"

" ______________CLOSETAG____________________________
 let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
 let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
 let g:closetag_filetypes = 'html,xhtml,phtml'
 let g:closetag_xhtml_filetypes = 'xhtml,jsx'
 let g:closetag_emptyTags_caseSensitive = 1
 let g:closetag_regions = {
     \ 'typescript.tsx': 'jsxRegion,tsxRegion',
         \ 'javascript.jsx': 'jsxRegion',
             \ }
             let g:closetag_shortcut = '>'
             let g:closetag_close_shortcut = '<leader>>'

if has ("autocmd")
    " File type detection. Indent based on filetype. Recommended.
    filetype plugin indent on
endif

inoremap jk <ESC>
let mapleader = " "














