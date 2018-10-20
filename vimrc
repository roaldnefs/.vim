" Load plugins
execute pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype off
filetype plugin indent on

" OLD CONFIGURATION
set nu
syn on
syntax enable
set nowrap
set shiftwidth=2
set showmatch
set autoindent
set nomodeline
set nobackup
set nowritebackup

" Make tabs, trailing whitespace, and non-breaking spaces visible
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" WHITESPACES, SPACES & TABS
" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in TAB when editing
set softtabstop=4


" UI CONFIGURATION
" Show line number
set number

" Show command in the bottom bar
set showcmd

" Hightlight current line
set cursorline

" Visual autocomplete for command menu
set wildmenu

" Redraw only when it's needed
set lazyredraw

" Hightlight matching
set showmatch


" SEARCHING
" Search as characters are entered
set incsearch

" Hightlight matches
set hlsearch


" MOVEMENT
" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
nnoremap B ^
nnoremap E $


" LEADER
" Leader is comma
let mapleader=","

" jk is escape
inoremap jk <esc>


" NERDTree
" Toggle NERDTree using <C-n>
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Lightline
set laststatus=2
