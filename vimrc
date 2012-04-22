" pathogen
call pathogen#infect()

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
set autoread              " reload external changes
set visualbell            " visual beep

" -------------------------------------------------------------------------
" Colors
" -------------------------------------------------------------------------

syntax enable
colorscheme fixxx

" -------------------------------------------------------------------------
" Text Editor
" -------------------------------------------------------------------------

"set lines=42
"set columns=120
"set formatoptions=tcqw
"set tw=80
set lbr
set gfn=Inconsolata:h20.00    " font and size
set smartindent
set number
set cursorline
set ts=2                      " tabs are 2 spaces
set softtabstop=2
set bs=2                      " backspace over everything in insert mode
set expandtab
set shiftwidth=2              " Tabs under smart indent
set linespace=4


" -------------------------------------------------------------------------
" Folding settings
" -------------------------------------------------------------------------

set foldmethod=indent     "fold based on indent
"set foldnestmax=3         "deepest fold is 3 levels
set nofoldenable          "don't fold by default

" -------------------------------------------------------------------------
" Status line
" -------------------------------------------------------------------------

set laststatus=2
set ruler " show cursor position
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(ln:\ %l\ of\ %L,\ co:\ %c%V\ (%P)%)

set wildmode=list:longest   " make cmdline tab completion similar to bash
set wildmenu                " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing

" Display tabs and trailing spaces
set list
set listchars=tab:▸\ ,eol:¬,trail:⋅,nbsp:⋅
set showbreak=↪

set formatoptions-=o " Don't continue comments when pushing o/O

" Vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

" Load ftplugins and indent files
filetype plugin on
filetype indent on

" Some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

" Hide buffers when not displayed
set hidden

" -------------------------------------------------------------------------
" Mappings
" -------------------------------------------------------------------------

" Get out of insert mode
inoremap kj <Esc>

" Get out of insert mode and save
inoremap <silent> lkj <Esc> :w<cr><bs>

" Map Q to something useful
noremap Q gq

" Make Y consistent with C and D
nnoremap Y y$

" Quick jumping between splits
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

" Quickly move between prev/next buffers
:noremap <left>  :bp<CR>
:noremap <right> :bn<CR>

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" Always turn on spell check
set spell spl=en_us

" Ignore extension files
set wildignore=*.dll,*.o,*.obj,*.bak,*.pyc,*.swp " ignore these"

" Turn off rails bits of statusbar
let g:rails_statusline=0

" -------------------------------------------------------------------------
" Long line warning
" -------------------------------------------------------------------------

if exists('+colorcolumn')
  set colorcolumn=80
  hi ColorColumn guibg=#300000
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" case only matters with mixed case expressions
set ignorecase
set smartcase

" -------------------------------------------------------------------------
" Grep.vim
" -------------------------------------------------------------------------

map gr :Grep -rin 

" -------------------------------------------------------------------------
" NERDCommenter
" -------------------------------------------------------------------------

let NERDSpaceDelims = 1

map <silent> <D-/> <plug>NERDCommenterToggle
map <silent> <leader>c <plug>NERDCommenterComment
map <silent> <leader>u <plug>NERDCommenterInvert
"au FileType ruby,coffee noremap <silent> ,c :s/^/#<cr> :noh<cr>
"au FileType ruby,coffee noremap <silent> ,u :s/^#/<cr> :noh<cr>

"au FileType javascript noremap <silent> ,c :s/^/\/\/<cr> :noh<cr>
"au FileType javascript noremap <silent> ,u :s/^\/\//<cr> :noh<cr>

"au FileType haml noremap <silent> ,c :s/^/-#<cr> :noh<cr>
"au FileType haml noremap <silent> ,u :s/^-#/<cr> :noh<cr>

" -------------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------------

let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "right"

map <leader>n :NERDTreeToggle <cr>

" Show current file in NERDTree
map <silent> <C-s> :NERDTree<CR><C-w>p:NERDTreeFind<CR>

" -------------------------------------------------------------------------
" CtrlP - Full path fuzzy file, buffer, mru and tag finder for Vim.
" https://github.com/kien/ctrlp.vim
" -------------------------------------------------------------------------

map <leader>b :CtrlPBuffer<CR> " search in open buffers
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" -------------------------------------------------------------------------
" AutoClose
" -------------------------------------------------------------------------

let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"]

" -------------------------------------------------------------------------
" Vimrc Shortcuts
" -------------------------------------------------------------------------

map <leader>v :sp ~/.vimrc<CR>
map <leader>V :source ~/.vimrc<CR> :source ~/.gvimrc<CR> :filetype detect<CR> :exe ":echo 'vimrc reloaded'"<CR>

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" -------------------------------------------------------------------------
" Open relative files
" -------------------------------------------------------------------------

let currdir = expand('%:h') . '/'
map <leader>e :e <C-R>=currdir<CR>
map <leader>t :tabe <C-R>=currdir<CR>
map <leader>s :sp <C-R>=currdir<CR>

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

