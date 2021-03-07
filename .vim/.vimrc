set nocompatible              " be iMproved, required
filetype off                  " required
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/mydotfiles/.vim/bundle/Vundle.vim
" call vundle#begin('~/.vim/bundle')
call vundle#begin('~/mydotfiles/.vim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'airblade/vim-gitgutter'
" Plugin 'digitaltoad/vim-pug'
" Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'ervandew/supertab'
Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'jgdavey/tslime.vim'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lbnf.vim'
Plugin 'mattn/emmet-vim'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
" Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-surround'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-endwise'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
" Plugin 'valloric/youcompleteme'
Plugin 'w0rp/ale'
" Plugin 'pangloss/vim-javascript'
" Plugin 'leafgarland/typescript-vim'
" Plugin 'maxmellon/vim-jsx-pretty'
" Plugin 'peitalin/vim-jsx-typescript'

" Themes ===================
Plugin 'nanotech/jellybeans.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chrisbra/Colorizer'
Plugin 'jdkanani/vim-material-theme'
Plugin 'josuegaleas/jay'

" Plugins for writing
" Plugin 'reedes/vim-pencil'
" Plugin 'ron89/thesaurus_query.vim' requires python and much effort to work
" with neovim
" Plugin 'rhysd/vim-grammarous'
" Plugin 'dpelle/vim-LanguageTool' problems to install
" Plugin 'junegunn/goyo.vim'
" Plugin 'sheerun/vim-polyglot'

" tagbar to show file structure
Plugin 'majutsushi/tagbar'

" Plugins work personal wiki
Plugin 'vimwiki/vimwiki'
" Plugin 'hotoo/calendar-vim'
Plugin 'itchyny/calendar.vim'
Plugin 'tbabej/taskwiki'
Plugin 'powerman/vim-plugin-AnsiEsc'
Plugin 'blindFS/vim-taskwarrior'

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
set number relativenumber
set background=dark
set ts=2 sts=2 sw=2 noexpandtab
set autoindent
" colorscheme solarized
colorscheme jay
" colorscheme material-theme
" colorscheme jellybeans

" nvim is complaining about this option
" set term=screen-256color

" Set region to British English
set spelllang=en_au

set wildmenu

" Vim gonna create a .un~ file with my edits \o/
set undofile

set ignorecase
set smartcase

set incsearch showmatch hlsearch
set colorcolumn=85

set listchars=tab:▸\ ,eol:¬,space:∙
"set listchars=tab:▸\ ,eol:¬,space:▬

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
nnoremap <leader>c :Calendar -view=today -position=right -split=vertical -width=100<CR>

inoremap <c-u> <esc>bvwUi

" =================== Shortcuts ==============

" Open my ~/.bashrc in a vertical new window
nnoremap <leader>eb :vsplit $HOME/.bashrc<cr>

" Open my ~/.vimrc in a vertical new window
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source my ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"Map , l to toogle list
nnoremap <leader>l :set list!<cr>

" Mapping <leader>" to surrond current word with quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
" Mapping <leader>' to surrond current word with single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
vnoremap <leader>" `<i"<esc>`>a"<esc>

" I'm not using this anymore
" nnoremap <F8> :Geeknote<cr>


iabbrev @@ roger.eduardo@gmail.com

" Changing cursor for different modes
" This came from:
" http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"


" Status line always on
set laststatus=2

" Stop F... complaining about unsaved files
set hidden
set expandtab

" RSpec.vim mappings
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>n :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>

" vim-rspec using send_to_Tmux
" let g:rspec_command = 'call Send_to_Tmux("be rspec {spec}\n")'

" defining configurations by file type
" Markdown nolist, spell, wrap
autocmd FileType markdown :setlocal spell spelllang=en_au nolist wrap

" Ruby: nospell, list, nowrap
autocmd FileType ruby :setlocal nospell list nowrap

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

iabbrev fnc function(){}

" making ctrlp ignore some folders and files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,_site/*,venv/*

" Theasurus query plugin. Remapping shortcut to solve conflict
nnoremap <Leader>hs :ThesaurusQueryReplaceCurrentWord<CR>
nnoremap <Leader>wa :VimwikiAll2HTML<CR>

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|venv\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" eslint configurations. source: https://medium.com/@hpux/vim-and-eslint-16fa08cc580f
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

let g:polyglot_disabled = ['graphql']

let tasks_wiki = {'path': '~/Dropbox/wiki/', 'syntax': 'default', 'ext': '.wiki', 'path_html': '~/Dropbox/wiki/html'}
let blog_wiki = {'path': '~/code/roger/rogeralmeida.github.io/wikki/', 'syntax': 'markdown', 'ext': '.md', 'index': 'main'}
let writing_wiki = {'path': '~/Dropbox/wiki-writing/', 'syntax': 'default', 'ext': '.wiki', 'index': 'index'}
let g:vimwiki_list = [tasks_wiki, writing_wiki, blog_wiki]

iab <expr> tday strftime('%Y-%m-%d')

" Using a template to create dairy notes with important questions
au BufNewFile ~/Dropbox/wiki/diary/*.md :silent 0r !~/mydotfiles/.vim/bin/generate-vimwiki-diary-template.py '%'

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P


let g:python3_host_prog = '/usr/bin/python3'
let g:vimwiki_folding = 'list'

if has("gui_running")
  if has("gui_gtk2")
    :set guifont=Fira\ Code\ 16
  elseif has("x11")
    " Also for GTK 1
    :set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
  elseif has("gui_win32")
    :set guifont=Luxi_Mono:h12:cANSI
  elseif has("gui_macvim")
    :set guifont=Fira\ Code:h16
  endif
endif

let g:calendar_google_calendar = 1
source ~/.cache/calendar.vim/credentials.vim
