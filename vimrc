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

if $TMUX == ''
  set clipboard+=unnamed  " use system clipboard
end

" -------------------------------------------------------------------------
" Colors
" -------------------------------------------------------------------------

syntax enable
colorscheme fixxx_console
set t_Co=256

" -------------------------------------------------------------------------
" Text Editor
" -------------------------------------------------------------------------

" set lbr
set number
set cursorline
set smartindent
set ts=2                   " tabs are 2 spaces
set softtabstop=2
set bs=2                   " backspace over everything in insert mode
set expandtab
set shiftwidth=2           " Tabs under smart indent
set linespace=4

" Load ftplugins and indent files
filetype plugin indent on

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
set ruler " show cursor position
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(ln:\ %l\ of\ %L,\ co:\ %c%V\ (%P)%)

set wildmode=list:longest   " make cmdline tab completion similar to bash
set wildmenu                " enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing

" Display trailing spaces (not tabs)
set list
set listchars=tab:\ \ ,trail:.,extends:#,nbsp:?

" To see available options:
"   :help fo-table
"
" To see current options:
"   :set formatoptions?
set formatoptions-=o " Don't continue comments when pushing o/O

" Vertical/horizontal scroll off settings
" set scrolloff=3
" set sidescrolloff=7
" set sidescroll=1

" Some stuff to get the mouse going in term
set mouse=a
set ttymouse=xterm2

" Hide buffers when not displayed
" set hidden

" -------------------------------------------------------------------------
" Mappings
" -------------------------------------------------------------------------

" Get out of insert mode
inoremap kj <Esc>

" Get out of insert mode and save
" inoremap <silent> lkj <Esc> :w<cr><bs>

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
:noremap <leader>a :bp<CR>
:noremap <leader>f :bn<CR>
:noremap <leader>d :bd<CR>

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
  hi ColorColumn guibg=#300000 ctermbg=52
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
map <silent> <leader>m <plug>NERDCommenterToggle
map <silent> <leader>c <plug>NERDCommenterComment
map <silent> <leader>u <plug>NERDCommenterInvert

" -------------------------------------------------------------------------
" NERDTree
" -------------------------------------------------------------------------

let NERDTreeDirArrows=0
let NERDTreeShowBookmarks = 1
let NERDChristmasTree = 1
let NERDTreeWinPos = "left"

map <leader>n :NERDTreeToggle<cr>
map <leader>N :NERDTreeFind<cr>

" Show current file in NERDTree
map <silent> <C-s> :NERDTree<CR><C-w>p:NERDTreeFind<CR>

" -------------------------------------------------------------------------
" CtrlP - Full path fuzzy file, buffer, mru and tag finder for Vim.
" https://github.com/kien/ctrlp.vim
" -------------------------------------------------------------------------

map <leader>b :CtrlPBuffer<CR> " search in open buffers
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

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
nmap <leader>w :call Preserve("%s/\\s\\+$//e")<CR>

" tidy whitespace
nmap <leader>q :call Preserve("normal gg=G")<CR>

" :retab!  convert tabs to spaces

map <Leader>r :let @+="bundle exec rspec " .@% . ":" . line(".")<CR>

