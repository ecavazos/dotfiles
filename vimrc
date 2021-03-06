" pathogen
call pathogen#infect()

" use % to jump between tags
:runtime macros/matchit.vim

" ------------------------------------------------------------------------------
" Basics
" ------------------------------------------------------------------------------

" Use Vim settings, rather then Vi settings (much better!).  This must be first,
" because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Use system clipboard for y, p
set clipboard=unnamedplus

let mapleader=","       " set leader key
let maplocalleader=",," " set local leader key
set history=1000        " store lots of :cmdline history
set directory=/tmp      " use directory for all .swp files
set showcmd             " show incomplete commands
set showmode            " show current mode down the bottom
set incsearch           " find the next match as we type the search
set hlsearch            " highlight searches by default
set nowrap              " don't wrap lines
set linebreak           " wrap lines at convenient points
set autoread            " reload external changes
set visualbell          " visual beep
set splitright          " open new vsplits to the right of the current pane
" set autochdir           " change cwd to current file's dir

" ------------------------------------------------------------------------------
" Colors
" ------------------------------------------------------------------------------

set t_Co=256
syntax enable
colorscheme fixxx_console
hi Normal guibg=NONE ctermbg=NONE

" ------------------------------------------------------------------------------
" Text Editor
" ------------------------------------------------------------------------------

" set lbr
set number
set cursorline
set smartindent
set ts=2          " tabs are 2 spaces
set softtabstop=2
set bs=2          " backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set expandtab
set linespace=4
filetype indent on

" Load ftplugins and indent files
filetype indent plugin on

" ------------------------------------------------------------------------------
" Folding settings
" ------------------------------------------------------------------------------

set foldmethod=indent     " fold based on indent
set foldnestmax=3         " deepest fold is 3 levels
set nofoldenable          " don't fold by default

" ------------------------------------------------------------------------------
" Status line
" ------------------------------------------------------------------------------

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

set pastetoggle=<F2>

" Vertical/horizontal scroll off settings
" set scrolloff=3
" set sidescrolloff=7
" set sidescroll=1

" Some stuff to get the mouse going in term
set mouse=a
if !has('nvim')
  set ttymouse=xterm2
endif

" Hide buffers when not displayed
" set hidden

" ------------------------------------------------------------------------------
" Mappings
" ------------------------------------------------------------------------------

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

" ------------------------------------------------------------------------------
" Long line warning
" ------------------------------------------------------------------------------

if exists('+colorcolumn')
  set colorcolumn=80
  hi ColorColumn guibg=#300000 ctermbg=45
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" case only matters with mixed case expressions
set ignorecase
set smartcase

" ------------------------------------------------------------------------------
" Grep.vim
" ------------------------------------------------------------------------------

map gr :Grep -rin

" ------------------------------------------------------------------------------
" NERDCommenter
" ------------------------------------------------------------------------------

let NERDSpaceDelims=1

map <silent> <D-/> <plug>NERDCommenterToggle
map <silent> <leader>m <plug>NERDCommenterToggle
map <silent> <leader>c <plug>NERDCommenterComment
map <silent> <leader>u <plug>NERDCommenterInvert

" ------------------------------------------------------------------------------
" Netrw
" ------------------------------------------------------------------------------

let g:netrw_liststyle=3

" ------------------------------------------------------------------------------
" CtrlP - Full path fuzzy file, buffer, mru and tag finder for Vim.
" https://github.com/kien/ctrlp.vim
" ------------------------------------------------------------------------------

let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'

" ------------------------------------------------------------------------------
" Vimrc Shortcuts
" ------------------------------------------------------------------------------

map <leader>V :sp ~/.vimrc<CR>
map <leader>v :source ~/.vimrc<CR> :filetype detect<CR> :exe ":echo 'vimrc reloaded'"<CR>

" automatically reload vimrc when it's saved
" au BufWritePost .vimrc so ~/.vimrc (may be super slow)
" au BufWritePost vimrc so ~/.vimrc (may be super slow)

" ------------------------------------------------------------------------------
" Open relative files
" ------------------------------------------------------------------------------

let currdir = expand('%:h') . '/'
map <leader>e :e <C-R>=currdir<CR>
map <leader>t :tabe <C-R>=currdir<CR>
map <leader>s :sp <C-R>=currdir<CR>

" ------------------------------------------------------------------------------
" Tidy
" ------------------------------------------------------------------------------

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

" Show syntax highlighting groups for word under cursor
nmap <leader>h :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:syntastic_java_javac_config_file_enabled=1
