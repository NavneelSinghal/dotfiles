set nocp ai si ts=4 sts=4 sw=4 et history=500 bg=dark enc=utf8 ch=2 cb=unnamed,unnamedplus vi='20,<1000 ls=2  ffs=unix,dos,mac bs=indent,eol,start cursorline
syntax on
filetype plugin indent on

inoremap {<CR> {<CR><BS>}<Esc>ko
inoremap [<CR> [<CR><BS>]<Esc>ko
inoremap (<CR> (<CR><BS>)<Esc>ko

map <space> /
map <c-space> ?

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

colorscheme gruvbox

" gvim options
if has("gui_running")
    set background=dark
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
    set guifont=JetBrains\ Mono\ 13
endif

" debugging stuff: to run in vim, run :Termdebug <executable_name>, and :help terminal-debug for help (use Ctrl+W twice to switch between windows)
packadd termdebug
let g:termdebug_popup = 0
let g:termdebug_wide = 163

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

