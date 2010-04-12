" -------------------------------------------------------------------------
" Basics
" -------------------------------------------------------------------------

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

let mapleader=","         " set leader key
set history=1000          " store lots of :cmdline history
set directory=/tmp        " use directory for all .swp files
set showcmd               " show incomplete commands
set showmode              " show current mode down the bottom
set incsearch             " find the next match as we type the search
set hlsearch              " highlight searches by default
set nowrap                " don't wrap lines
set linebreak             " wrap lines at convenient points
set autoread              " reload changes

" -------------------------------------------------------------------------
" Colors
" -------------------------------------------------------------------------

colorscheme fixxx

" -------------------------------------------------------------------------
" Text Editor
" -------------------------------------------------------------------------

set transparency=3
set lines=42
set columns=120
set wrap
set formatoptions=tcqw
set tw=80
set lbr
set gfn=DejaVu\ Sans\ Mono:h16.00     " font and size
set smartindent
set number
set cursorline
set ts=2                              " tabs are 2 spaces
set softtabstop=2
set bs=2                              " backspace over everything in insert mode
set expandtab
set shiftwidth=2                      " Tabs under smart indent


" -------------------------------------------------------------------------
" Folding settings
" -------------------------------------------------------------------------

set foldmethod=indent     "fold based on indent
set foldnestmax=3         "deepest fold is 3 levels
set nofoldenable          "don't fold by default

" -------------------------------------------------------------------------
" Status line
" -------------------------------------------------------------------------

set laststatus=2
set ruler                             " show cursor position
set statusline=%f
set statusline+=%r                    "read only flag
set statusline+=%m\                   "modified flag
set statusline+=[fmt=%{&ff}]
set statusline+=[type=%y]
set statusline+=[ascii=\%03.3b]
set statusline+=%=                    "left/right separator
set statusline+=[pos=%l,%c][%p%%]\ 
set statusline+=[len=%L]

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

"load ftplugins and indent files
filetype plugin on
filetype indent on

"turn on syntax highlighting
syntax on

"some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

"hide buffers when not displayed
set hidden

"dont load csapprox if we no gui support - silences an annoying warning
if !has("gui")
    let g:CSApprox_loaded = 1
endif

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map to bufexplorer
nnoremap <C-B> :BufExplorer<cr>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

" Always turn on spell check
set spell spl=en_us

" Ignore extension files
set wildignore=*.dll,*.o,*.obj,*.bak,*.pyc,*.swp " ignore these"

" Turn off rails bits of statusbar
let g:rails_statusline=0

" Hide toolbar
if has("gui_running")
    " set guioptions=egmrt
    set guioptions+=e " No gui-like tabs
    set guioptions+=g " Grey inactive menu items
    set guioptions+=t " Include tearoff menu items
    set guioptions-=T " No toolbar
    set guioptions-=m " No menubar
    set guioptions+=r " Right scroolbar
    set guioptions+=a " Gui visual w/ mouse (yank to "*)
endif

au BufRead,BufNewFile * syntax match Search /\%<81v.\%>77v/
au BufRead,BufNewFile * syntax match ErrorMsg /\%>80v.\+/

" case only matters with mixed case expressions
set ignorecase
set smartcase

" Use Ack instead of Grep when available
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor
endif

map <leader>f :Ack

" Quick jumping between splits
map <C-H> <C-W>h<C-W>_
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_

" -------------------------------------------------------------------------
" Comments
" -------------------------------------------------------------------------

au FileType ruby noremap <silent> ,c :s/^/#<cr>
au FileType ruby noremap <silent> ,u :s/^#/<cr>

au FileType javascript noremap <silent> ,c :s/^/\/\/<cr>
au FileType javascript noremap <silent> ,u :s/^\/\//<cr>

" -------------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------------

let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "right"
map <leader>n :NERDTreeToggle <cr>

" -------------------------------------------------------------------------
" FuzzyFinderTextMate
" -------------------------------------------------------------------------

let g:fuzzy_ignore = "*.log"
let g:fuzzy_matching_limit = 70
map <leader>t :FuzzyFinderTextMate <cr>
map <leader>b :FuzzyFinderBuffer<CR>      " search in open buffers
nnoremap <c-f> :FuzzyFinderTextMate<CR>   " map just like text mate

" -------------------------------------------------------------------------
" Specky
" -------------------------------------------------------------------------

let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey = "<C-S>r"
let g:speckySpecSwitcherKey = "<C-S>x"
let g:speckyRunSpecKey = "<C-S>s"
let g:speckyRunSpecCmd = "spec -fs"
let g:speckyRunRdocCmd = "fri -L -f plain"


"Adding #{} to AutoClose Plugin and activating it for String interpolation
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" -------------------------------------------------------------------------
" Tab Navigation :: Normal Mode
" -------------------------------------------------------------------------

map <D-1> :tabn 1<CR>
map <D-2> :tabn 2<CR>
map <D-3> :tabn 3<CR>
map <D-4> :tabn 4<CR>
map <D-5> :tabn 5<CR>
map <D-6> :tabn 6<CR>
map <D-7> :tabn 7<CR>
map <D-8> :tabn 8<CR>
map <D-9> :tabn 9<CR>

" -------------------------------------------------------------------------
" Tab Navigation :: Insert Mode
" -------------------------------------------------------------------------

map! <D-1> <C-O>:tabn 1<CR>
map! <D-2> <C-O>:tabn 2<CR>
map! <D-3> <C-O>:tabn 3<CR>
map! <D-4> <C-O>:tabn 4<CR>
map! <D-5> <C-O>:tabn 5<CR>
map! <D-6> <C-O>:tabn 6<CR>
map! <D-7> <C-O>:tabn 7<CR>
map! <D-8> <C-O>:tabn 8<CR>
map! <D-9> <C-O>:tabn 9<CR>

" -------------------------------------------------------------------------
" Vimrc Shortcuts
" -------------------------------------------------------------------------

map <leader>v :sp ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" -------------------------------------------------------------------------
" Tidy
" -------------------------------------------------------------------------

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" remove trailing white spaces
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>

" tidy whitespace
nmap _= :call Preserve("normal gg=G")<CR>

" :retab!  convert tabs to spaces
