set tabstop=2
set nowrap
set shiftwidth=2
set expandtab
set smarttab
set number
set laststatus=2
set updatetime=1000
syntax enable
colorscheme monokai
execute pathogen#infect()
autocmd FileType ruby set commentstring=#\ %s
let g:airline_powerline_fonts=1
let s:hlStatus = 1
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
highlight link MaybeOverLength OverLength
match MaybeOverLength /\%81v.\+/
fun ToggleCommentHL()
  if s:hlStatus
    highlight link MaybeOverLength NONE
    let s:hlStatus = 0
  else
    highlight link MaybeOverLength OverLength
    let s:hlStatus = 1
  endif
endfun
map <F2> :call ToggleCommentHL()<CR>
set backspace=indent,eol,start
filetype plugin on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
