" Turn off compatibility mode
set nocompatible

" Case-insensitive searches
set ignorecase

" Show line/column numbers
set ruler

" Flash matching brackets
set showmatch

" Disable mouse support.
set mouse=

" Indent engines
filetype indent on

"
"  AutoCommmand options
"
if has("autocmd")

    "
    "  Modify options for files I might be editing often:
    "
    "   Set tab stops to 4, and enable soft tabs
    "   Enable smart auto-indent
    "
    autocmd FileType c,html,perl,php,sh,txt
        \ set tabstop=4         |
        \ set softtabstop=4     |
        \ set expandtab         |
        \ set autoindent        |
        \ set smarttab          |
        \ set shiftwidth=4

endif

" Switch syntax highlighting on when the terminal has colors.
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
