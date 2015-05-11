set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin('~/.vim/bundle')
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
Plugin 'neilagabriel/vim-geeknote'
Plugin 'lbnf.vim'
Plugin 'killphi/vim-ebnf'
Plugin 'ervandew/supertab'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'
Plugin 'jakedouglas/exuberant-ctags'

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
set autoindent
let g:airline_theme='luna'
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

set listchars=tab:▸\ ,eol:¬

let mapleader = ","

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

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"Map , l to toogle list
nnoremap <leader>l :set list!<cr>

" Mapping <leader>" to surrond current word with quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Mapping <leader>' to surrond current word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" `<i"<esc>`>a"<esc>

nnoremap <F8> :Geeknote<cr>


iabbrev @@ roger.eduardo@gmail.com

" Changing cursor for different modes
" This came from:
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"


" Status line always on
set laststatus=2

" Stop F... complaining about unsaved files
set hidden
set expandtab

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" vim-rspec using send_to_Tmux
let g:rspec_command = 'call Send_to_Tmux("be rspec {spec}\n")'
