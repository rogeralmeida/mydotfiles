set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
source ~/.vimrc

" let g:loaded_python_provider=0

let g:python_host_prog  = '/usr/local/opt/python/libexec/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

function! Note(name)
  let g:note_path = $NOTE_PATH
  execute "!touch " . g:note_path . "/" . a:name . ".md"
  execute "vsp " . g:note_path . "/" . a:name . ".md"
endfunction

command -nargs=1 NoteA call Note(<args>)
