let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <D-BS> 
inoremap <M-BS> 
inoremap <M-Down> }
inoremap <D-Down> <C-End>
inoremap <M-Up> {
inoremap <D-Up> <C-Home>
noremap! <M-Right> <C-Right>
noremap! <D-Right> <End>
noremap! <M-Left> <C-Left>
noremap! <D-Left> <Home>
inoremap <silent> <Plug>(ale_complete) :ALEComplete
imap <C-G>S <Plug>ISurround
imap <C-G>s <Plug>Isurround
imap <C-S> <Plug>Isurround
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', 'insert')
imap <C-Y>m <Plug>(emmet-merge-lines)
inoremap <Plug>(emmet-merge-lines) =emmet#util#closePopup()=emmet#mergeLines()
imap <C-Y>A <Plug>(emmet-anchorize-summary)
inoremap <Plug>(emmet-anchorize-summary) =emmet#util#closePopup()=emmet#anchorizeURL(1)
imap <C-Y>a <Plug>(emmet-anchorize-url)
inoremap <Plug>(emmet-anchorize-url) =emmet#util#closePopup()=emmet#anchorizeURL(0)
imap <C-Y>k <Plug>(emmet-remove-tag)
inoremap <Plug>(emmet-remove-tag) =emmet#util#closePopup()=emmet#removeTag()
imap <C-Y>j <Plug>(emmet-split-join-tag)
inoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
imap <C-Y>/ <Plug>(emmet-toggle-comment)
inoremap <Plug>(emmet-toggle-comment) =emmet#util#closePopup()=emmet#toggleComment()
imap <C-Y>I <Plug>(emmet-image-encode)
inoremap <Plug>(emmet-image-encode) =emmet#util#closePopup()=emmet#imageEncode()
imap <C-Y>i <Plug>(emmet-image-size)
inoremap <Plug>(emmet-image-size) =emmet#util#closePopup()=emmet#imageSize()
inoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
inoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
imap <C-Y>N <Plug>(emmet-move-prev)
inoremap <Plug>(emmet-move-prev) =emmet#util#closePopup()=emmet#moveNextPrev(1)
imap <C-Y>n <Plug>(emmet-move-next)
inoremap <Plug>(emmet-move-next) =emmet#util#closePopup()=emmet#moveNextPrev(0)
imap <C-Y>D <Plug>(emmet-balance-tag-outword)
inoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
imap <C-Y>d <Plug>(emmet-balance-tag-inward)
inoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
imap <C-Y>u <Plug>(emmet-update-tag)
inoremap <Plug>(emmet-update-tag) =emmet#util#closePopup()=emmet#updateTag()
imap <C-Y>; <Plug>(emmet-expand-word)
inoremap <Plug>(emmet-expand-word) =emmet#util#closePopup()=emmet#expandAbbr(1,"")
imap <C-Y>, <Plug>(emmet-expand-abbr)
inoremap <Plug>(emmet-expand-abbr) =emmet#util#closePopup()=emmet#expandAbbr(0,"")
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-T> :tabnew
inoremap <C-Tab> 	
inoremap <C-S-Tab> :tabpreviousi
inoremap <C-U> bvwUi
map  h
map <NL> j
map  k
map  l
map  :NERDTreeToggle
nnoremap <silent>  :CtrlP
nnoremap  :tabnew
vmap c <Plug>(emmet-code-pretty)
nmap m <Plug>(emmet-merge-lines)
nmap A <Plug>(emmet-anchorize-summary)
nmap a <Plug>(emmet-anchorize-url)
nmap k <Plug>(emmet-remove-tag)
nmap j <Plug>(emmet-split-join-tag)
nmap / <Plug>(emmet-toggle-comment)
nmap I <Plug>(emmet-image-encode)
nmap i <Plug>(emmet-image-size)
nmap N <Plug>(emmet-move-prev)
nmap n <Plug>(emmet-move-next)
vmap D <Plug>(emmet-balance-tag-outword)
nmap D <Plug>(emmet-balance-tag-outword)
vmap d <Plug>(emmet-balance-tag-inward)
nmap d <Plug>(emmet-balance-tag-inward)
nmap u <Plug>(emmet-update-tag)
nmap ; <Plug>(emmet-expand-word)
vmap , <Plug>(emmet-expand-abbr)
nmap , <Plug>(emmet-expand-abbr)
map ,rwp <Plug>RestoreWinPosn
map ,swp <Plug>SaveWinPosn
nmap ,w,m <Plug>VimwikiMakeTomorrowDiaryNote
nmap ,w,y <Plug>VimwikiMakeYesterdayDiaryNote
nmap ,w,t <Plug>VimwikiTabMakeDiaryNote
nmap ,w,w <Plug>VimwikiMakeDiaryNote
nmap ,w,i <Plug>VimwikiDiaryGenerateLinks
nmap ,wi <Plug>VimwikiDiaryIndex
nmap ,ws <Plug>VimwikiUISelect
nmap ,wt <Plug>VimwikiTabIndex
nmap ,ww <Plug>VimwikiIndex
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
vnoremap ,P "+P
vnoremap ,p "+p
nnoremap ,P "+P
nnoremap ,p "+p
nnoremap ,yy "+yy
nnoremap ,y "+y
nnoremap ,Y "+yg_
vnoremap ,y "+y
nnoremap ,wa :VimwikiAll2HTML
nnoremap ,hs :ThesaurusQueryReplaceCurrentWord
vnoremap ," `<i"`>a"
nnoremap ,' viwa'hbi'lel
nnoremap ," viwa"hbi"lel
nnoremap ,l :set list!
nnoremap ,sv :source $MYVIMRC
nnoremap ,ev :vsplit $MYVIMRC
nnoremap ,eb :vsplit $HOME/.bashrc
nnoremap <silent> ,w :set wrap!
nnoremap ,  :noh
nnoremap <silent> ,s :set spell!
xmap S <Plug>VSurround
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
noremap <M-Down> }
noremap <D-Down> <C-End>
noremap <M-Up> {
noremap <D-Up> <C-Home>
noremap <M-Right> <C-Right>
noremap <D-Right> <End>
noremap <M-Left> <C-Left>
noremap <D-Left> <Home>
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
vnoremap <silent> <Plug>(calendar) :Calendar
nnoremap <silent> <Plug>(calendar) :Calendar
xnoremap <Plug>ColorFgBg :ColorSwapFgBg
nnoremap <Plug>ColorFgBg :ColorSwapFgBg
xnoremap <Plug>ColorContrast :ColorContrast
nnoremap <Plug>ColorContrast :ColorContrast
xnoremap <Plug>Colorizer :ColorHighlight
nnoremap <Plug>Colorizer :ColorToggle
nnoremap <silent> <Plug>(ale_repeat_selection) :ALERepeatSelection
nnoremap <silent> <Plug>(ale_rename) :ALERename
nnoremap <silent> <Plug>(ale_import) :ALEImport
nnoremap <silent> <Plug>(ale_documentation) :ALEDocumentation
nnoremap <silent> <Plug>(ale_hover) :ALEHover
nnoremap <silent> <Plug>(ale_find_references) :ALEFindReferences
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_vsplit) :ALEGoToTypeDefinitionIn -vsplit
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_split) :ALEGoToTypeDefinition -split
nnoremap <silent> <Plug>(ale_go_to_type_definition_in_tab) :ALEGoToTypeDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_type_definition) :ALEGoToTypeDefinition
nnoremap <silent> <Plug>(ale_go_to_definition_in_vsplit) :ALEGoToDefinition -vsplit
nnoremap <silent> <Plug>(ale_go_to_definition_in_split) :ALEGoToDefinition -split
nnoremap <silent> <Plug>(ale_go_to_definition_in_tab) :ALEGoToDefinition -tab
nnoremap <silent> <Plug>(ale_go_to_definition) :ALEGoToDefinition
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap_warning) :ALENext -wrap -warning
nnoremap <silent> <Plug>(ale_next_warning) :ALENext -warning
nnoremap <silent> <Plug>(ale_next_wrap_error) :ALENext -wrap -error
nnoremap <silent> <Plug>(ale_next_error) :ALENext -error
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap_warning) :ALEPrevious -wrap -warning
nnoremap <silent> <Plug>(ale_previous_warning) :ALEPrevious -warning
nnoremap <silent> <Plug>(ale_previous_wrap_error) :ALEPrevious -wrap -error
nnoremap <silent> <Plug>(ale_previous_error) :ALEPrevious -error
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <silent> <Plug>SurroundRepeat .
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
vmap <C-Y>c <Plug>(emmet-code-pretty)
vnoremap <Plug>(emmet-code-pretty) :call emmet#codePretty()
nmap <C-Y>m <Plug>(emmet-merge-lines)
nnoremap <Plug>(emmet-merge-lines) :call emmet#mergeLines()
nmap <C-Y>A <Plug>(emmet-anchorize-summary)
nnoremap <Plug>(emmet-anchorize-summary) :call emmet#anchorizeURL(1)
nmap <C-Y>a <Plug>(emmet-anchorize-url)
nnoremap <Plug>(emmet-anchorize-url) :call emmet#anchorizeURL(0)
nmap <C-Y>k <Plug>(emmet-remove-tag)
nnoremap <Plug>(emmet-remove-tag) :call emmet#removeTag()
nmap <C-Y>j <Plug>(emmet-split-join-tag)
nnoremap <Plug>(emmet-split-join-tag) :call emmet#splitJoinTag()
nmap <C-Y>/ <Plug>(emmet-toggle-comment)
nnoremap <Plug>(emmet-toggle-comment) :call emmet#toggleComment()
nmap <C-Y>I <Plug>(emmet-image-encode)
nnoremap <Plug>(emmet-image-encode) :call emmet#imageEncode()
nmap <C-Y>i <Plug>(emmet-image-size)
nnoremap <Plug>(emmet-image-size) :call emmet#imageSize()
nnoremap <Plug>(emmet-move-prev-item) :call emmet#moveNextPrevItem(1)
nnoremap <Plug>(emmet-move-next-item) :call emmet#moveNextPrevItem(0)
nmap <C-Y>N <Plug>(emmet-move-prev)
nnoremap <Plug>(emmet-move-prev) :call emmet#moveNextPrev(1)
nmap <C-Y>n <Plug>(emmet-move-next)
nnoremap <Plug>(emmet-move-next) :call emmet#moveNextPrev(0)
vmap <C-Y>D <Plug>(emmet-balance-tag-outword)
vnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
nmap <C-Y>D <Plug>(emmet-balance-tag-outword)
nnoremap <Plug>(emmet-balance-tag-outword) :call emmet#balanceTag(-1)
vmap <C-Y>d <Plug>(emmet-balance-tag-inward)
vnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <C-Y>d <Plug>(emmet-balance-tag-inward)
nnoremap <Plug>(emmet-balance-tag-inward) :call emmet#balanceTag(1)
nmap <C-Y>u <Plug>(emmet-update-tag)
nnoremap <Plug>(emmet-update-tag) :call emmet#updateTag()
nmap <C-Y>; <Plug>(emmet-expand-word)
nnoremap <Plug>(emmet-expand-word) :call emmet#expandAbbr(1,"")
vmap <C-Y>, <Plug>(emmet-expand-abbr)
vnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(2,"")
nmap <C-Y>, <Plug>(emmet-expand-abbr)
nnoremap <Plug>(emmet-expand-abbr) :call emmet#expandAbbr(3,"")
nnoremap <silent> <C-P> :CtrlP
nmap <silent> <Plug>NormalModeSendToTmux vip<Plug>SendSelectionToTmux
vnoremap <silent> <Plug>SendSelectionToTmux "ry :call Send_to_Tmux(@r)
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
nnoremap <C-T> :tabnew
nnoremap <C-Tab> :tabnext
nnoremap <C-S-Tab> :tabprevious
map <F3> :NERDTreeFind
map <C-N> :NERDTreeToggle
map <C-H> h
map <C-J> j
map <C-K> k
map <C-L> l
imap S <Plug>ISurround
imap s <Plug>Isurround
imap 	 <Plug>SuperTabForward
imap  <Plug>DiscretionaryEnd
imap  <Plug>Isurround
inoremap  :tabnew
inoremap  bvwUi
imap m <Plug>(emmet-merge-lines)
imap A <Plug>(emmet-anchorize-summary)
imap a <Plug>(emmet-anchorize-url)
imap k <Plug>(emmet-remove-tag)
imap j <Plug>(emmet-split-join-tag)
imap / <Plug>(emmet-toggle-comment)
imap I <Plug>(emmet-image-encode)
imap i <Plug>(emmet-image-size)
imap N <Plug>(emmet-move-prev)
imap n <Plug>(emmet-move-next)
imap D <Plug>(emmet-balance-tag-outword)
imap d <Plug>(emmet-balance-tag-inward)
imap u <Plug>(emmet-update-tag)
imap ; <Plug>(emmet-expand-word)
imap , <Plug>(emmet-expand-abbr)
iabbr <expr> tday strftime('%Y-%m-%d')
iabbr fnc function(){}
iabbr @@ roger.eduardo@gmail.com
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set balloonexpr=ale#balloon#Expr()
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
set guifont=Fira\ Code:h16
set guitablabel=%M%t
set helplang=en
set hidden
set hlsearch
set ignorecase
set incsearch
set langmenu=none
set laststatus=2
set listchars=tab:▸\ ,eol:¬,space:∙
set mouse=a
set printexpr=system('open\ -a\ Preview\ '.v:fname_in)\ +\ v:shell_error
set pyxversion=3
set runtimepath=
set runtimepath+=~/.vim
set runtimepath+=~/mydotfiles/.vim/bundle/vim-gitgutter
set runtimepath+=~/mydotfiles/.vim/bundle/supertab
set runtimepath+=~/mydotfiles/.vim/bundle/Vundle.vim
set runtimepath+=~/mydotfiles/.vim/bundle/vim-snippets
set runtimepath+=~/mydotfiles/.vim/bundle/tslime.vim
set runtimepath+=~/mydotfiles/.vim/bundle/ctrlp.vim
set runtimepath+=~/mydotfiles/.vim/bundle/lbnf.vim
set runtimepath+=~/mydotfiles/.vim/bundle/emmet-vim
set runtimepath+=~/mydotfiles/.vim/bundle/nerdcommenter
set runtimepath+=~/mydotfiles/.vim/bundle/nerdtree
set runtimepath+=~/mydotfiles/.vim/bundle/vim-surround
set runtimepath+=~/mydotfiles/.vim/bundle/vim-fugitive
set runtimepath+=~/mydotfiles/.vim/bundle/vim-endwise
set runtimepath+=~/mydotfiles/.vim/bundle/vim-airline
set runtimepath+=~/mydotfiles/.vim/bundle/syntastic
set runtimepath+=~/mydotfiles/.vim/bundle/ale
set runtimepath+=~/mydotfiles/.vim/bundle/jellybeans.vim
set runtimepath+=~/mydotfiles/.vim/bundle/vim-colors-solarized
set runtimepath+=~/mydotfiles/.vim/bundle/Colorizer
set runtimepath+=~/mydotfiles/.vim/bundle/vim-material-theme
set runtimepath+=~/mydotfiles/.vim/bundle/jay
set runtimepath+=~/mydotfiles/.vim/bundle/tagbar
set runtimepath+=~/mydotfiles/.vim/bundle/vimwiki
set runtimepath+=~/mydotfiles/.vim/bundle/calendar.vim
set runtimepath+=~/mydotfiles/.vim/bundle/taskwiki
set runtimepath+=~/mydotfiles/.vim/bundle/vim-plugin-AnsiEsc
set runtimepath+=~/mydotfiles/.vim/bundle/vim-taskwarrior
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/vimfiles
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/runtime
set runtimepath+=/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after
set runtimepath+=~/.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/Vundle.vim
set runtimepath+=~/mydotfiles/.vim/bundle/vim-gitgutter/after
set runtimepath+=~/mydotfiles/.vim/bundle/supertab/after
set runtimepath+=~/mydotfiles/.vim/bundle/Vundle.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-snippets/after
set runtimepath+=~/mydotfiles/.vim/bundle/tslime.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/ctrlp.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/lbnf.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/emmet-vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/nerdcommenter/after
set runtimepath+=~/mydotfiles/.vim/bundle/nerdtree/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-surround/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-fugitive/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-endwise/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-airline/after
set runtimepath+=~/mydotfiles/.vim/bundle/syntastic/after
set runtimepath+=~/mydotfiles/.vim/bundle/ale/after
set runtimepath+=~/mydotfiles/.vim/bundle/jellybeans.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-colors-solarized/after
set runtimepath+=~/mydotfiles/.vim/bundle/Colorizer/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-material-theme/after
set runtimepath+=~/mydotfiles/.vim/bundle/jay/after
set runtimepath+=~/mydotfiles/.vim/bundle/tagbar/after
set runtimepath+=~/mydotfiles/.vim/bundle/vimwiki/after
set runtimepath+=~/mydotfiles/.vim/bundle/calendar.vim/after
set runtimepath+=~/mydotfiles/.vim/bundle/taskwiki/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-plugin-AnsiEsc/after
set runtimepath+=~/mydotfiles/.vim/bundle/vim-taskwarrior/after
set shiftwidth=2
set showmatch
set smartcase
set softtabstop=2
set spelllang=en_au
set noswapfile
set tabstop=2
set termencoding=utf-8
set undofile
set viewoptions=folds,cursor,curdir
set wildignore=*/tmp/*,*.so,*.swp,*.zip,_site/*,venv/*
set wildmenu
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
edit ~/Dropbox/wiki/index.wiki
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 89 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 46 + 68) / 136)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
inoremap <buffer> <silent> <S-CR> :VimwikiReturn 2 2
imap <buffer> <C-L><C-M> <Plug>VimwikiListToggle
imap <buffer> <C-L><C-K> <Plug>VimwikiListPrevSymbol
imap <buffer> <C-L><C-J> <Plug>VimwikiListNextSymbol
imap <buffer> <C-T> <Plug>VimwikiIncreaseLvlSingleItem
imap <buffer> <C-D> <Plug>VimwikiDecreaseLvlSingleItem
nmap <buffer> 	 <Plug>VimwikiNextLink
vmap <buffer>  <Plug>VimwikiNormalizeLinkVisualCR
nnoremap <buffer> <silent>  :py3 Mappings.task_info_or_vimwiki_follow_link()
vmap <buffer> + <Plug>VimwikiNormalizeLinkVisual
nmap <buffer> + <Plug>VimwikiNormalizeLink
nmap <buffer> ,hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> ,hu <Plug>(GitGutterUndoHunk)
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
vnoremap <buffer> <silent> ,t- :TaskWikiStop
vnoremap <buffer> <silent> ,t+ :TaskWikiStart
vnoremap <buffer> <silent> ,t. :TaskWikiRedo
vnoremap <buffer> <silent> ,tm :TaskWikiMod
vnoremap <buffer> <silent> ,tl :TaskWikiLink
vnoremap <buffer> <silent> ,ti :TaskWikiInfo
vnoremap <buffer> <silent> ,tg :TaskWikiGrid
vnoremap <buffer> <silent> ,te :TaskWikiEdit
vnoremap <buffer> <silent> ,tD :TaskWikiDelete
vnoremap <buffer> <silent> ,td :TaskWikiDone
vnoremap <buffer> <silent> ,tct :TaskWikiChooseTag
vnoremap <buffer> <silent> ,tcp :TaskWikiChooseProject
vnoremap <buffer> <silent> ,ta :TaskWikiAnnotate
nnoremap <buffer> <silent> ,t- :TaskWikiStop
nnoremap <buffer> <silent> ,t+ :TaskWikiStart
nnoremap <buffer> <silent> ,t. :TaskWikiRedo
nnoremap <buffer> <silent> ,tt :TaskWikiTags
nnoremap <buffer> <silent> ,tS :TaskWikiStats
nnoremap <buffer> <silent> ,ts :TaskWikiProjectsSummary
nnoremap <buffer> <silent> ,tp :TaskWikiProjects
nnoremap <buffer> <silent> ,tm :TaskWikiMod
nnoremap <buffer> <silent> ,tl :TaskWikiLink
nnoremap <buffer> <silent> ,ti :TaskWikiInfo
nnoremap <buffer> <silent> ,tha :TaskWikiHistoryAnnual
nnoremap <buffer> <silent> ,thm :TaskWikiHistoryMonthly
nnoremap <buffer> <silent> ,tGa :TaskWikiGhistoryAnnual
nnoremap <buffer> <silent> ,tGm :TaskWikiGhistoryMonthly
nnoremap <buffer> <silent> ,tg :TaskWikiGrid
nnoremap <buffer> <silent> ,te :TaskWikiEdit
nnoremap <buffer> <silent> ,tD :TaskWikiDelete
nnoremap <buffer> <silent> ,td :TaskWikiDone
nnoremap <buffer> <silent> ,tC :TaskWikiCalendar
nnoremap <buffer> <silent> ,tct :TaskWikiChooseTag
nnoremap <buffer> <silent> ,tcp :TaskWikiChooseProject
nnoremap <buffer> <silent> ,tbm :TaskWikiBurndownMonthly
nnoremap <buffer> <silent> ,tbw :TaskWikiBurndownWeekly
nnoremap <buffer> <silent> ,tbd :TaskWikiBurndownDaily
nnoremap <buffer> <silent> ,ta :TaskWikiAnnotate
nmap <buffer> ,wr <Plug>VimwikiRenameFile
nmap <buffer> ,wd <Plug>VimwikiDeleteFile
nmap <buffer> ,wn <Plug>VimwikiGoto
nmap <buffer> ,whh <Plug>Vimwiki2HTMLBrowse
nmap <buffer> ,wh <Plug>Vimwiki2HTML
nmap <buffer> - <Plug>VimwikiRemoveHeaderLevel
nmap <buffer> = <Plug>VimwikiAddHeaderLevel
nmap <buffer> O <Plug>VimwikiListO
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> [= <Plug>VimwikiGoToPrevSiblingHeader
nmap <buffer> [[ <Plug>VimwikiGoToPrevHeader
nmap <buffer> [u <Plug>VimwikiGoToParentHeader
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
nmap <buffer> ]= <Plug>VimwikiGoToNextSiblingHeader
nmap <buffer> ]] <Plug>VimwikiGoToNextHeader
nmap <buffer> ]u <Plug>VimwikiGoToParentHeader
vmap <buffer> al <Plug>VimwikiTextObjListChildrenV
omap <buffer> al <Plug>VimwikiTextObjListChildren
vmap <buffer> ac <Plug>VimwikiTextObjColumnV
omap <buffer> ac <Plug>VimwikiTextObjColumn
vmap <buffer> a\ <Plug>VimwikiTextObjTableCellV
omap <buffer> a\ <Plug>VimwikiTextObjTableCell
vmap <buffer> aH <Plug>VimwikiTextObjHeaderSubV
omap <buffer> aH <Plug>VimwikiTextObjHeaderSub
vmap <buffer> ah <Plug>VimwikiTextObjHeaderV
omap <buffer> ah <Plug>VimwikiTextObjHeader
nmap <buffer> gw1 <Plug>VimwikiTableAlignW1
nmap <buffer> gww <Plug>VimwikiTableAlignW
nmap <buffer> gq1 <Plug>VimwikiTableAlignQ1
nmap <buffer> gqq <Plug>VimwikiTableAlignQ
noremap <buffer> <silent> gLA :VimwikiChangeSymbolInListTo A)
noremap <buffer> <silent> glA :VimwikiChangeSymbolTo A)
noremap <buffer> <silent> gLa :VimwikiChangeSymbolInListTo a)
noremap <buffer> <silent> gla :VimwikiChangeSymbolTo a)
noremap <buffer> <silent> gLI :VimwikiChangeSymbolInListTo I)
noremap <buffer> <silent> glI :VimwikiChangeSymbolTo I)
noremap <buffer> <silent> gLi :VimwikiChangeSymbolInListTo i)
noremap <buffer> <silent> gli :VimwikiChangeSymbolTo i)
noremap <buffer> <silent> gL1 :VimwikiChangeSymbolInListTo 1.
noremap <buffer> <silent> gl1 :VimwikiChangeSymbolTo 1.
noremap <buffer> <silent> gL# :VimwikiChangeSymbolInListTo #
noremap <buffer> <silent> gl# :VimwikiChangeSymbolTo #
noremap <buffer> <silent> gL* :VimwikiChangeSymbolInListTo *
noremap <buffer> <silent> gl* :VimwikiChangeSymbolTo *
noremap <buffer> <silent> gL- :VimwikiChangeSymbolInListTo -
noremap <buffer> <silent> gl- :VimwikiChangeSymbolTo -
nmap <buffer> gL <Plug>VimwikiRemoveCBInList
nmap <buffer> gl <Plug>VimwikiRemoveSingleCB
nmap <buffer> gLR <Plug>VimwikiRenumberAllLists
nmap <buffer> gLr <Plug>VimwikiRenumberAllLists
nmap <buffer> glr <Plug>VimwikiRenumberList
nmap <buffer> gLL <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLl <Plug>VimwikiIncreaseLvlWholeItem
nmap <buffer> gLH <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gLh <Plug>VimwikiDecreaseLvlWholeItem
nmap <buffer> gll <Plug>VimwikiIncreaseLvlSingleItem
nmap <buffer> glh <Plug>VimwikiDecreaseLvlSingleItem
vmap <buffer> glp <Plug>VimwikiDecrementListItem
nmap <buffer> glp <Plug>VimwikiDecrementListItem
vmap <buffer> gln <Plug>VimwikiIncrementListItem
nmap <buffer> gln <Plug>VimwikiIncrementListItem
vmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> glx <Plug>VimwikiToggleRejectedListItem
nmap <buffer> gnt <Plug>VimwikiNextTask
vmap <buffer> il <Plug>VimwikiTextObjListSingleV
omap <buffer> il <Plug>VimwikiTextObjListSingle
vmap <buffer> ic <Plug>VimwikiTextObjColumnInnerV
omap <buffer> ic <Plug>VimwikiTextObjColumnInner
vmap <buffer> i\ <Plug>VimwikiTextObjTableCellInnerV
omap <buffer> i\ <Plug>VimwikiTextObjTableCellInner
vmap <buffer> iH <Plug>VimwikiTextObjHeaderSubContentV
omap <buffer> iH <Plug>VimwikiTextObjHeaderSubContent
vmap <buffer> ih <Plug>VimwikiTextObjHeaderContentV
omap <buffer> ih <Plug>VimwikiTextObjHeaderContent
nmap <buffer> o <Plug>VimwikiListo
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevSiblingHeader :call vimwiki#base#goto_sibling(-1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextSiblingHeader :call vimwiki#base#goto_sibling(+1)
nnoremap <buffer> <silent> <Plug>VimwikiGoToPrevHeader :call vimwiki#base#goto_prev_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToNextHeader :call vimwiki#base#goto_next_header()
nnoremap <buffer> <silent> <Plug>VimwikiGoToParentHeader :call vimwiki#base#goto_parent_header()
nnoremap <buffer> <silent> <Plug>VimwikiRemoveHeaderLevel :call vimwiki#base#RemoveHeaderLevel(v:count)
nnoremap <buffer> <silent> <Plug>VimwikiAddHeaderLevel :call vimwiki#base#AddHeaderLevel(v:count)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListSingleV :call vimwiki#lst#TO_list_item(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListSingle :call vimwiki#lst#TO_list_item(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjListChildrenV :call vimwiki#lst#TO_list_item(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjListChildren :call vimwiki#lst#TO_list_item(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInnerV :call vimwiki#base#TO_table_col(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumnInner :call vimwiki#base#TO_table_col(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjColumnV :call vimwiki#base#TO_table_col(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjColumn :call vimwiki#base#TO_table_col(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInnerV :call vimwiki#base#TO_table_cell(1, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellInner :call vimwiki#base#TO_table_cell(1, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjTableCellV :call vimwiki#base#TO_table_cell(0, 1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjTableCell :call vimwiki#base#TO_table_cell(0, 0)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContentV :call vimwiki#base#TO_header(1, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubContent :call vimwiki#base#TO_header(1, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSubV :call vimwiki#base#TO_header(0, 1, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderSub :call vimwiki#base#TO_header(0, 1, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContentV :call vimwiki#base#TO_header(1, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderContent :call vimwiki#base#TO_header(1, 0, v:count1)
vnoremap <buffer> <silent> <Plug>VimwikiTextObjHeaderV :call vimwiki#base#TO_header(0, 0, v:count1)
onoremap <buffer> <silent> <Plug>VimwikiTextObjHeader :call vimwiki#base#TO_header(0, 0, v:count1)
nmap <buffer> <M-Right> <Plug>VimwikiTableMoveColumnRight
nmap <buffer> <M-Left> <Plug>VimwikiTableMoveColumnLeft
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW1 :VimwikiTableAlignW 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignW :VimwikiTableAlignW
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ1 :VimwikiTableAlignQ 2
nnoremap <buffer> <silent> <Plug>VimwikiTableAlignQ :VimwikiTableAlignQ
vmap <buffer> <C-@> <Plug>VimwikiToggleListItem
vmap <buffer> <Nul> <Plug>VimwikiToggleListItem
nmap <buffer> <C-@> <Plug>VimwikiToggleListItem
nmap <buffer> <Nul> <Plug>VimwikiToggleListItem
vmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nmap <buffer> <C-Space> <Plug>VimwikiToggleListItem
nnoremap <buffer> <silent> <Plug>VimwikiListO :call vimwiki#u#count_exe('call vimwiki#lst#kbd_O()')
nnoremap <buffer> <silent> <Plug>VimwikiListo :call vimwiki#u#count_exe('call vimwiki#lst#kbd_o()')
nmap <buffer> <C-Up> <Plug>VimwikiDiaryPrevDay
nmap <buffer> <C-Down> <Plug>VimwikiDiaryNextDay
nmap <buffer> <S-Tab> <Plug>VimwikiPrevLink
nmap <buffer> <BS> <Plug>VimwikiGoBackLink
nmap <buffer> <C-S-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <D-CR> <Plug>VimwikiTabnewLink
nmap <buffer> <C-CR> <Plug>VimwikiVSplitLink
nmap <buffer> <S-CR> <Plug>VimwikiSplitLink
imap <buffer>  <Plug>VimwikiDecreaseLvlSingleItem
inoremap <buffer> <expr> 	 vimwiki#tbl#kbd_tab()
imap <buffer>  <Plug>VimwikiListToggle
imap <buffer>  <Plug>VimwikiListPrevSymbol
imap <buffer> <NL> <Plug>VimwikiListNextSymbol
inoremap <buffer> <silent>  :VimwikiReturn 1 5
imap <buffer>  <Plug>VimwikiIncreaseLvlSingleItem
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=85
setlocal colorcolumn=85
setlocal comments=
setlocal commentstring=%%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=nc
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vimwiki'
setlocal filetype=vimwiki
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=2
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=VimwikiFoldText()
setlocal formatexpr=
setlocal formatoptions=tqn
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=Complete_wikifiles
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_au
setlocal spelloptions=
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.wiki
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vimwiki'
setlocal syntax=vimwiki
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=./tags,tags,~/Dropbox/wiki/.vimwiki_tags
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
1
normal! zo
let s:l = 12 - ((11 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 0
wincmd w
argglobal
enew
file \[calendar]
let s:cpo_save=&cpo
set cpo&vim
cnoremap <buffer> <silent> <expr> <Plug>(calendar_command_enter) b:calendar.action('command_enter')
nmap <buffer>  <Plug>(calendar_add)
nmap <buffer>  <Plug>(calendar_up_large)
nmap <buffer>  <Plug>(calendar_down_big)
nmap <buffer>  <Plug>(calendar_scroll_down)
nmap <buffer>  <Plug>(calendar_down_large)
nmap <buffer>  <Plug>(calendar_status)
nmap <buffer>  h
nmap <buffer> 	 <Plug>(calendar_tab)
nmap <buffer> <NL> <Plug>(calendar_move_down)
nmap <buffer>  <Plug>(calendar_move_up)
nmap <buffer>  <Plug>(calendar_redraw)
nmap <buffer>  <Plug>(calendar_enter)
nmap <buffer>  <Plug>(calendar_down)
nmap <buffer>  <Plug>(calendar_up)
nmap <buffer>  <Plug>(calendar_redraw)
nmap <buffer>  <Plug>(calendar_up_big)
nmap <buffer>  <Plug>(calendar_visual_block)
nmap <buffer>  <Plug>(calendar_subtract)
nmap <buffer>  <Plug>(calendar_scroll_up)
nmap <buffer>   <Plug>(calendar_space)
nmap <buffer> $ <Plug>(calendar_line_last)
nmap <buffer> <silent> '' :call b:calendar.mark.get('''')
nmap <buffer> <silent> 'z :call b:calendar.mark.get('z')
nmap <buffer> <silent> 'y :call b:calendar.mark.get('y')
nmap <buffer> <silent> 'x :call b:calendar.mark.get('x')
nmap <buffer> <silent> 'w :call b:calendar.mark.get('w')
nmap <buffer> <silent> 'v :call b:calendar.mark.get('v')
nmap <buffer> <silent> 'u :call b:calendar.mark.get('u')
nmap <buffer> <silent> 't :call b:calendar.mark.get('t')
nmap <buffer> <silent> 's :call b:calendar.mark.get('s')
nmap <buffer> <silent> 'r :call b:calendar.mark.get('r')
nmap <buffer> <silent> 'q :call b:calendar.mark.get('q')
nmap <buffer> <silent> 'p :call b:calendar.mark.get('p')
nmap <buffer> <silent> 'o :call b:calendar.mark.get('o')
nmap <buffer> <silent> 'n :call b:calendar.mark.get('n')
nmap <buffer> <silent> 'm :call b:calendar.mark.get('m')
nmap <buffer> <silent> 'l :call b:calendar.mark.get('l')
nmap <buffer> <silent> 'k :call b:calendar.mark.get('k')
nmap <buffer> <silent> 'j :call b:calendar.mark.get('j')
nmap <buffer> <silent> 'i :call b:calendar.mark.get('i')
nmap <buffer> <silent> 'h :call b:calendar.mark.get('h')
nmap <buffer> <silent> 'g :call b:calendar.mark.get('g')
nmap <buffer> <silent> 'f :call b:calendar.mark.get('f')
nmap <buffer> <silent> 'e :call b:calendar.mark.get('e')
nmap <buffer> <silent> 'd :call b:calendar.mark.get('d')
nmap <buffer> <silent> 'c :call b:calendar.mark.get('c')
nmap <buffer> <silent> 'b :call b:calendar.mark.get('b')
nmap <buffer> <silent> 'a :call b:calendar.mark.get('a')
nmap <buffer> ( <Plug>(calendar_first_line)
nmap <buffer> ) <Plug>(calendar_last_line)
nmap <buffer> + <Plug>(calendar_plus)
nmap <buffer> ,hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> ,hu <Plug>(GitGutterUndoHunk)
xmap <buffer> ,hs <Plug>(GitGutterStageHunk)
nmap <buffer> - <Plug>(calendar_minus)
nmap <buffer> 0 <Plug>(calendar_line_head)
nmap <buffer> < <Plug>(calendar_view_left)
nmap <buffer> > <Plug>(calendar_view_right)
nmap <buffer> ? <Plug>(calendar_help)
nmap <buffer> A <Plug>(calendar_start_insert_last)
nmap <buffer> B b
nmap <buffer> C <Plug>(calendar_change_line)
nmap <buffer> D <Plug>(calendar_delete_line)
nmap <buffer> E <Plug>(calendar_event)
nmap <buffer> G <Plug>(calendar_last_line)
nmap <buffer> H <Nop>
nmap <buffer> I <Plug>(calendar_start_insert_head)
nmap <buffer> J <Nop>
nmap <buffer> L <Plug>(calendar_clear)
nmap <buffer> M <Plug>(calendar_move_event)
nmap <buffer> N <Plug>(calendar_prev_match)
nmap <buffer> O <Plug>(calendar_start_insert_prev_line)
nmap <buffer> P <Nop>
nmap <buffer> Q <Plug>(calendar_exit)
nmap <buffer> R <Nop>
nmap <buffer> T <Plug>(calendar_task)
nmap <buffer> U <Plug>(calendar_undo_line)
nmap <buffer> V <Plug>(calendar_visual_line)
nmap <buffer> W w
nmap <buffer> Y <Plug>(calendar_yank_line)
nmap <buffer> [] [[
nmap <buffer> [[ (
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
nmap <buffer> ][ ]]
nmap <buffer> ]] )
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
nmap <buffer> ^ 0
nmap <buffer> <silent> `` :call b:calendar.mark.get('`')
nmap <buffer> <silent> `z :call b:calendar.mark.get('z')
nmap <buffer> <silent> `y :call b:calendar.mark.get('y')
nmap <buffer> <silent> `x :call b:calendar.mark.get('x')
nmap <buffer> <silent> `w :call b:calendar.mark.get('w')
nmap <buffer> <silent> `v :call b:calendar.mark.get('v')
nmap <buffer> <silent> `u :call b:calendar.mark.get('u')
nmap <buffer> <silent> `t :call b:calendar.mark.get('t')
nmap <buffer> <silent> `s :call b:calendar.mark.get('s')
nmap <buffer> <silent> `r :call b:calendar.mark.get('r')
nmap <buffer> <silent> `q :call b:calendar.mark.get('q')
nmap <buffer> <silent> `p :call b:calendar.mark.get('p')
nmap <buffer> <silent> `o :call b:calendar.mark.get('o')
nmap <buffer> <silent> `n :call b:calendar.mark.get('n')
nmap <buffer> <silent> `m :call b:calendar.mark.get('m')
nmap <buffer> <silent> `l :call b:calendar.mark.get('l')
nmap <buffer> <silent> `k :call b:calendar.mark.get('k')
nmap <buffer> <silent> `j :call b:calendar.mark.get('j')
nmap <buffer> <silent> `i :call b:calendar.mark.get('i')
nmap <buffer> <silent> `h :call b:calendar.mark.get('h')
nmap <buffer> <silent> `g :call b:calendar.mark.get('g')
nmap <buffer> <silent> `f :call b:calendar.mark.get('f')
nmap <buffer> <silent> `e :call b:calendar.mark.get('e')
nmap <buffer> <silent> `d :call b:calendar.mark.get('d')
nmap <buffer> <silent> `c :call b:calendar.mark.get('c')
nmap <buffer> <silent> `b :call b:calendar.mark.get('b')
nmap <buffer> <silent> `a :call b:calendar.mark.get('a')
nmap <buffer> a <Plug>(calendar_start_insert_append)
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
nmap <buffer> b <Plug>(calendar_prev)
nmap <buffer> c <Plug>(calendar_change)
nmap <buffer> d <Plug>(calendar_delete)
nmap <buffer> e w
nmap <buffer> g<C-H> 
nmap <buffer> g 
nmap <buffer> gH V
nmap <buffer> gg <Plug>(calendar_first_line)
nmap <buffer> g<End> $
nmap <buffer> g_ $
nmap <buffer> g$ $
nmap <buffer> gm <Plug>(calendar_line_middle)
nmap <buffer> g^ ^
nmap <buffer> g<Home> 0
nmap <buffer> g0 0
nmap <buffer> gE b
nmap <buffer> ge b
nmap <buffer> g<Up> <Up>
nmap <buffer> g<Down> <Down>
nmap <buffer> g<Right> <Right>
nmap <buffer> g<Left> <Left>
nmap <buffer> gk k
nmap <buffer> gj j
nmap <buffer> gl l
nmap <buffer> gh v
nmap <buffer> <silent> g'z :call b:calendar.mark.get('z')
nmap <buffer> <silent> g`z :call b:calendar.mark.get('z')
nmap <buffer> <silent> g'y :call b:calendar.mark.get('y')
nmap <buffer> <silent> g`y :call b:calendar.mark.get('y')
nmap <buffer> <silent> g'x :call b:calendar.mark.get('x')
nmap <buffer> <silent> g`x :call b:calendar.mark.get('x')
nmap <buffer> <silent> g'w :call b:calendar.mark.get('w')
nmap <buffer> <silent> g`w :call b:calendar.mark.get('w')
nmap <buffer> <silent> g'v :call b:calendar.mark.get('v')
nmap <buffer> <silent> g`v :call b:calendar.mark.get('v')
nmap <buffer> <silent> g'u :call b:calendar.mark.get('u')
nmap <buffer> <silent> g`u :call b:calendar.mark.get('u')
nmap <buffer> <silent> g't :call b:calendar.mark.get('t')
nmap <buffer> <silent> g`t :call b:calendar.mark.get('t')
nmap <buffer> <silent> g's :call b:calendar.mark.get('s')
nmap <buffer> <silent> g`s :call b:calendar.mark.get('s')
nmap <buffer> <silent> g'r :call b:calendar.mark.get('r')
nmap <buffer> <silent> g`r :call b:calendar.mark.get('r')
nmap <buffer> <silent> g'q :call b:calendar.mark.get('q')
nmap <buffer> <silent> g`q :call b:calendar.mark.get('q')
nmap <buffer> <silent> g'p :call b:calendar.mark.get('p')
nmap <buffer> <silent> g`p :call b:calendar.mark.get('p')
nmap <buffer> <silent> g'o :call b:calendar.mark.get('o')
nmap <buffer> <silent> g`o :call b:calendar.mark.get('o')
nmap <buffer> <silent> g'n :call b:calendar.mark.get('n')
nmap <buffer> <silent> g`n :call b:calendar.mark.get('n')
nmap <buffer> <silent> g'm :call b:calendar.mark.get('m')
nmap <buffer> <silent> g`m :call b:calendar.mark.get('m')
nmap <buffer> <silent> g'l :call b:calendar.mark.get('l')
nmap <buffer> <silent> g`l :call b:calendar.mark.get('l')
nmap <buffer> <silent> g'k :call b:calendar.mark.get('k')
nmap <buffer> <silent> g`k :call b:calendar.mark.get('k')
nmap <buffer> <silent> g'j :call b:calendar.mark.get('j')
nmap <buffer> <silent> g`j :call b:calendar.mark.get('j')
nmap <buffer> <silent> g'i :call b:calendar.mark.get('i')
nmap <buffer> <silent> g`i :call b:calendar.mark.get('i')
nmap <buffer> <silent> g'h :call b:calendar.mark.get('h')
nmap <buffer> <silent> g`h :call b:calendar.mark.get('h')
nmap <buffer> <silent> g'g :call b:calendar.mark.get('g')
nmap <buffer> <silent> g`g :call b:calendar.mark.get('g')
nmap <buffer> <silent> g'f :call b:calendar.mark.get('f')
nmap <buffer> <silent> g`f :call b:calendar.mark.get('f')
nmap <buffer> <silent> g'e :call b:calendar.mark.get('e')
nmap <buffer> <silent> g`e :call b:calendar.mark.get('e')
nmap <buffer> <silent> g'd :call b:calendar.mark.get('d')
nmap <buffer> <silent> g`d :call b:calendar.mark.get('d')
nmap <buffer> <silent> g'c :call b:calendar.mark.get('c')
nmap <buffer> <silent> g`c :call b:calendar.mark.get('c')
nmap <buffer> <silent> g'b :call b:calendar.mark.get('b')
nmap <buffer> <silent> g`b :call b:calendar.mark.get('b')
nmap <buffer> <silent> g'a :call b:calendar.mark.get('a')
nmap <buffer> <silent> g`a :call b:calendar.mark.get('a')
nmap <buffer> h <Plug>(calendar_left)
nmap <buffer> i <Plug>(calendar_start_insert)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
nmap <buffer> j <Plug>(calendar_down)
nmap <buffer> k <Plug>(calendar_up)
nmap <buffer> l <Plug>(calendar_right)
nmap <buffer> <silent> mz :call b:calendar.mark.set('z')
nmap <buffer> <silent> my :call b:calendar.mark.set('y')
nmap <buffer> <silent> mx :call b:calendar.mark.set('x')
nmap <buffer> <silent> mw :call b:calendar.mark.set('w')
nmap <buffer> <silent> mv :call b:calendar.mark.set('v')
nmap <buffer> <silent> mu :call b:calendar.mark.set('u')
nmap <buffer> <silent> mt :call b:calendar.mark.set('t')
nmap <buffer> <silent> ms :call b:calendar.mark.set('s')
nmap <buffer> <silent> mr :call b:calendar.mark.set('r')
nmap <buffer> <silent> mq :call b:calendar.mark.set('q')
nmap <buffer> <silent> mp :call b:calendar.mark.set('p')
nmap <buffer> <silent> mo :call b:calendar.mark.set('o')
nmap <buffer> <silent> mn :call b:calendar.mark.set('n')
nmap <buffer> <silent> mm :call b:calendar.mark.set('m')
nmap <buffer> <silent> ml :call b:calendar.mark.set('l')
nmap <buffer> <silent> mk :call b:calendar.mark.set('k')
nmap <buffer> <silent> mj :call b:calendar.mark.set('j')
nmap <buffer> <silent> mi :call b:calendar.mark.set('i')
nmap <buffer> <silent> mh :call b:calendar.mark.set('h')
nmap <buffer> <silent> mg :call b:calendar.mark.set('g')
nmap <buffer> <silent> mf :call b:calendar.mark.set('f')
nmap <buffer> <silent> me :call b:calendar.mark.set('e')
nmap <buffer> <silent> md :call b:calendar.mark.set('d')
nmap <buffer> <silent> mc :call b:calendar.mark.set('c')
nmap <buffer> <silent> mb :call b:calendar.mark.set('b')
nmap <buffer> <silent> ma :call b:calendar.mark.set('a')
nmap <buffer> n <Plug>(calendar_next_match)
nmap <buffer> o <Plug>(calendar_start_insert_next_line)
nmap <buffer> p <Nop>
nmap <buffer> q <Plug>(calendar_hide)
nmap <buffer> r <Nop>
nmap <buffer> t <Plug>(calendar_today)
nmap <buffer> u <Plug>(calendar_undo)
nmap <buffer> v <Plug>(calendar_visual)
nmap <buffer> w <Plug>(calendar_next)
nmap <buffer> y <Plug>(calendar_yank)
nmap <buffer> zb <Plug>(calendar_scroll_bottom)
nmap <buffer> z- <Plug>(calendar_scroll_bottom_head)
nmap <buffer> zz <Plug>(calendar_scroll_center)
nmap <buffer> z. <Plug>(calendar_scroll_center_head)
nmap <buffer> zt <Plug>(calendar_scroll_top)
nmap <buffer> z <Plug>(calendar_scroll_top_head)
nmap <buffer> { (
nmap <buffer> | <Plug>(calendar_bar)
nmap <buffer> } )
nmap <buffer> ~ <Nop>
map <buffer> <ScrollWheelDown> <Plug>(calendar_next)
map <buffer> <ScrollWheelUp> <Plug>(calendar_prev)
nmap <buffer> <C-V> <Plug>(calendar_visual_block)
nmap <buffer> <C-R> <Plug>(calendar_redraw)
nmap <buffer> <C-L> <Plug>(calendar_redraw)
nmap <buffer> <C-G> <Plug>(calendar_status)
nmap <buffer> <C-X> <Plug>(calendar_subtract)
nmap <buffer> <C-A> <Plug>(calendar_add)
nmap <buffer> <S-Tab> <Plug>(calendar_shift_tab)
nmap <buffer> <Undo> <Plug>(calendar_undo)
nmap <buffer> <C-Y> <Plug>(calendar_scroll_up)
nmap <buffer> <C-E> <Plug>(calendar_scroll_down)
nmap <buffer> <C-End> <Plug>(calendar_last_line_last)
nmap <buffer> <C-Home> gg
nmap <buffer> <End> $
nmap <buffer> <Home> 0
nmap <buffer> <PageUp> 
nmap <buffer> <PageDown> 
nmap <buffer> <C-B> <Plug>(calendar_up_large)
nmap <buffer> <C-F> <Plug>(calendar_down_large)
nmap <buffer> <C-U> <Plug>(calendar_up_big)
nmap <buffer> <C-D> <Plug>(calendar_down_big)
nmap <buffer> <C-Left> b
nmap <buffer> <S-Left> b
nmap <buffer> <C-Right> w
nmap <buffer> <S-Right> w
nmap <buffer> <C-S-Up> <Plug>(calendar_move_up)
nmap <buffer> <C-S-Down> <Plug>(calendar_move_down)
nmap <buffer> <C-K> <Plug>(calendar_move_up)
nmap <buffer> <C-J> <Plug>(calendar_move_down)
nmap <buffer> <C-P> <Plug>(calendar_up)
nmap <buffer> <C-N> <Plug>(calendar_down)
nmap <buffer> <S-Up> <Up>
nmap <buffer> <S-Down> <Down>
nmap <buffer> <C-H> h
nmap <buffer> <BS> h
nmap <buffer> <Up> <Plug>(calendar_up)
nmap <buffer> <Down> <Plug>(calendar_down)
nmap <buffer> <Right> <Plug>(calendar_right)
nmap <buffer> <Left> <Plug>(calendar_left)
nmap <buffer> <silent> <expr> <Plug>(calendar_escape) b:calendar.view.help_visible() ? "\<Plug>(calendar_help)" : b:calendar.view.event_visible() ? "\<Plug>(calendar_event)" : b:calendar.visual_mode() ? "\<Plug>(calendar_exit_visual)" : b:calendar.view.task_visible() ? "\<Plug>(calendar_task)" : ""
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_quick) :call b:calendar.action('start_insert_quick')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_next_line) :call b:calendar.action('start_insert_next_line')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_prev_line) :call b:calendar.action('start_insert_prev_line')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_last) :call b:calendar.action('start_insert_last')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_head) :call b:calendar.action('start_insert_head')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert_append) :call b:calendar.action('start_insert_append')
nnoremap <buffer> <silent> <Plug>(calendar_start_insert) :call b:calendar.action('start_insert')
nnoremap <buffer> <silent> <Plug>(calendar_exit_visual) :call b:calendar.action('exit_visual')
nnoremap <buffer> <silent> <Plug>(calendar_visual_block) :call b:calendar.action('visual_block')
nnoremap <buffer> <silent> <Plug>(calendar_visual_line) :call b:calendar.action('visual_line')
nnoremap <buffer> <silent> <Plug>(calendar_visual) :call b:calendar.action('visual')
nnoremap <buffer> <silent> <Plug>(calendar_exit) :call b:calendar.action('exit')
nnoremap <buffer> <silent> <Plug>(calendar_hide) :call b:calendar.action('hide')
nnoremap <buffer> <silent> <Plug>(calendar_help) :call b:calendar.action('help')
nnoremap <buffer> <silent> <Plug>(calendar_clear) :call b:calendar.action('clear')
nnoremap <buffer> <silent> <Plug>(calendar_redraw) :call b:calendar.action('redraw')
nnoremap <buffer> <silent> <Plug>(calendar_view_right) :call b:calendar.action('view_right')
nnoremap <buffer> <silent> <Plug>(calendar_view_left) :call b:calendar.action('view_left')
nnoremap <buffer> <silent> <Plug>(calendar_enter) :call b:calendar.action('enter')
nnoremap <buffer> <silent> <Plug>(calendar_today) :call b:calendar.action('today')
nnoremap <buffer> <silent> <Plug>(calendar_prev_match) :call b:calendar.action('prev_match')
nnoremap <buffer> <silent> <Plug>(calendar_next_match) :call b:calendar.action('next_match')
nnoremap <buffer> <silent> <Plug>(calendar_shift_tab) :call b:calendar.action('shift_tab')
nnoremap <buffer> <silent> <Plug>(calendar_tab) :call b:calendar.action('tab')
nnoremap <buffer> <silent> <Plug>(calendar_undo_line) :call b:calendar.action('undo_line')
nnoremap <buffer> <silent> <Plug>(calendar_undo) :call b:calendar.action('undo')
nnoremap <buffer> <silent> <Plug>(calendar_change_line) :call b:calendar.action('change_line')
nnoremap <buffer> <silent> <Plug>(calendar_change) :call b:calendar.action('change')
nnoremap <buffer> <silent> <Plug>(calendar_yank_line) :call b:calendar.action('yank_line')
nnoremap <buffer> <silent> <Plug>(calendar_yank) :call b:calendar.action('yank')
nnoremap <buffer> <silent> <Plug>(calendar_delete_line) :call b:calendar.action('delete_line')
nnoremap <buffer> <silent> <Plug>(calendar_delete) :call b:calendar.action('delete')
nnoremap <buffer> <silent> <Plug>(calendar_close_event) :call b:calendar.action('close_event')
nnoremap <buffer> <silent> <Plug>(calendar_close_task) :call b:calendar.action('close_task')
nnoremap <buffer> <silent> <Plug>(calendar_event) :call b:calendar.action('event')
nnoremap <buffer> <silent> <Plug>(calendar_task) :call b:calendar.action('task')
nnoremap <buffer> <silent> <Plug>(calendar_minus) :call b:calendar.action('minus')
nnoremap <buffer> <silent> <Plug>(calendar_plus) :call b:calendar.action('plus')
nnoremap <buffer> <silent> <Plug>(calendar_status) :call b:calendar.action('status')
nnoremap <buffer> <silent> <Plug>(calendar_subtract) :call b:calendar.action('subtract')
nnoremap <buffer> <silent> <Plug>(calendar_add) :call b:calendar.action('add')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_bottom) :call b:calendar.action('scroll_bottom')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_bottom_head) :call b:calendar.action('scroll_bottom_head')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_center) :call b:calendar.action('scroll_center')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_center_head) :call b:calendar.action('scroll_center_head')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_top) :call b:calendar.action('scroll_top')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_top_head) :call b:calendar.action('scroll_top_head')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_up) :call b:calendar.action('scroll_up')
nnoremap <buffer> <silent> <Plug>(calendar_scroll_down) :call b:calendar.action('scroll_down')
nnoremap <buffer> <silent> <Plug>(calendar_space) :call b:calendar.action('space')
nnoremap <buffer> <silent> <Plug>(calendar_last_line_last) :call b:calendar.action('last_line_last')
nnoremap <buffer> <silent> <Plug>(calendar_first_line_head) :call b:calendar.action('first_line_head')
nnoremap <buffer> <silent> <Plug>(calendar_last_line) :call b:calendar.action('last_line')
nnoremap <buffer> <silent> <Plug>(calendar_first_line) :call b:calendar.action('first_line')
nnoremap <buffer> <silent> <Plug>(calendar_bar) :call b:calendar.action('bar')
nnoremap <buffer> <silent> <Plug>(calendar_line_last) :call b:calendar.action('line_last')
nnoremap <buffer> <silent> <Plug>(calendar_line_middle) :call b:calendar.action('line_middle')
nnoremap <buffer> <silent> <Plug>(calendar_line_head) :call b:calendar.action('line_head')
nnoremap <buffer> <silent> <Plug>(calendar_up_large) :call b:calendar.action('up_large')
nnoremap <buffer> <silent> <Plug>(calendar_down_large) :call b:calendar.action('down_large')
nnoremap <buffer> <silent> <Plug>(calendar_up_big) :call b:calendar.action('up_big')
nnoremap <buffer> <silent> <Plug>(calendar_down_big) :call b:calendar.action('down_big')
nnoremap <buffer> <silent> <Plug>(calendar_move_event) :call b:calendar.action('move_event')
nnoremap <buffer> <silent> <Plug>(calendar_move_up) :call b:calendar.action('move_up')
nnoremap <buffer> <silent> <Plug>(calendar_move_down) :call b:calendar.action('move_down')
nnoremap <buffer> <silent> <Plug>(calendar_next) :call b:calendar.action('next')
nnoremap <buffer> <silent> <Plug>(calendar_prev) :call b:calendar.action('prev')
nnoremap <buffer> <silent> <Plug>(calendar_up) :call b:calendar.action('up')
nnoremap <buffer> <silent> <Plug>(calendar_down) :call b:calendar.action('down')
nnoremap <buffer> <silent> <Plug>(calendar_right) :call b:calendar.action('right')
nnoremap <buffer> <silent> <Plug>(calendar_left) :call b:calendar.action('left')
cmap <buffer>  <Plug>(calendar_command_enter)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=hide
setlocal nobuflisted
setlocal buftype=nofile
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=85
setlocal colorcolumn=
setlocal comments=s1:/*,mb:*,ex:*/
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
set conceallevel=2
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'calendar'
setlocal filetype=calendar
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\%(\\(-\\|\\*\\|#\\)\\|\\(\\C\\%(\\d\\+)\\|\\d\\+\\.\\|[ivxlcdm]\\+)\\|[IVXLCDM]\\+)\\|\\l\\{1,2})\\|\\u\\{1,2})\\)\\)\\)\\s\\+\\%(\\[\\([\ .oOX-]\\)\\]\\s\\)\\?
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=^\\s*#\\s*include
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal nomacmeta
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal nomodifiable
setlocal nrformats=bin,octal,hex
set number
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal readonly
set relativenumber
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=2
setlocal noshortname
setlocal showbreak=
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_au
setlocal spelloptions=
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'calendar'
setlocal syntax=calendar
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=0
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-1
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 89 + 68) / 136)
exe 'vert 2resize ' . ((&columns * 46 + 68) / 136)
tabnext 1
badd +0 ~/Dropbox/wiki/index.wiki
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
