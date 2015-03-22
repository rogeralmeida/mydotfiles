set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/Vundle.vim
call vundle#begin('~/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mattn/emmet-vim'
Plugin 'rodjek/vim-puppet'
Plugin 'kchmck/vim-coffee-script'
Plugin 'chrisbra/Colorizer'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on
set number
set background=dark
set ts=2 sts=2 sw=2 noexpandtab
colorscheme solarized


" Set region to British English
set spelllang=en_gb

set wildmenu

" Vim gonna create a .un~ file with my edits \o/
set undofile

set ignorecase
set smartcase

set incsearch showmatch hlsearch
set colorcolumn=85

set list
set listchars=tab:▸\ ,eol:¬

let mapleader = ","

set autochdir
let g:ctrlp_working_path_mode = 0

map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h

" NERDTree
silent! map <C-n> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" Toggle spell checking on and off with `,s`
nnoremap <silent> <leader>s :set spell!<CR>

nnoremap <leader><space> :noh<cr>
nnoremap <silent> <leader>w :set wrap!<CR>

inoremap <c-u> <esc>bvwUi
nnoremap <c-u> bvwU

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Mapping <leader>" to surrond current word with quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Mapping <leader>' to surrond current word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" `<i"<esc>`>a"<esc>


iabbrev @@ roger.eduardo@gmail.com
