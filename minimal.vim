set nocompatible                " use vim, not vi api
syntax on                       " enable syntax processing
set nonumber                    " don't show line numbers
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set shiftwidth=4                " Use indents of 4 spaces
filetype plugin indent on
set autoindent                  " Indent at the same level of the previous line
set smartindent         
set backspace=indent,eol,start
set pastetoggle=<F5>	        " If you want to paste in INSERT MODE, press `F5` (PASTE toggle)
set smarttab
set cursorline                  " highlight current line
set expandtab                   " tabs are spaces
set incsearch                   " search as characters are entered
set wrap                        " wrap text
set laststatus=2                " always show the status bar
set history=500                 " enable copying of at most 500 lines across buffers
set ruler                       " show current position
set cmdheight=2                 " set the max height of the command area to 2
try
    colorscheme gruvbox         " try to change colorscheme to gruvbox
catch
endtry
set background=dark             " dark background
set encoding=utf8               " utf8 encoding
set ffs=unix,dos,mac            " file format
set lbr                         " break along words
set tw=500                      " break every 500 characters
set viminfo='20,<1000           " viminfo

" autocomplete options
inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap [<CR> [<CR><BS>]<Esc>ko
inoremap (<CR> (<CR><BS>)<Esc>ko

" searching forwards
map <space> /
" searching backwards
map <c-space> ?

" gvim options
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=Ubuntu\ Mono\ 14
endif
