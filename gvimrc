
" -------------------------------------------------------------------------
" GUI
" -------------------------------------------------------------------------

if has("gui_running")
    " set guioptions=egmrt
    set guioptions+=e " No gui-like tabs
    set guioptions+=g " Grey inactive menu items
    set guioptions+=t " Include tearoff menu items
    set guioptions-=T " No toolbar
    set guioptions-=m " No menubar
    set guioptions+=r " Right scroolbar
    " set guioptions+=a " Gui visual w/ mouse (yank to "*)
endif

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


