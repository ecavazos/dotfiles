" This color scheme will make your MacVim sing like Angels

" :highlight and :syntax are helpful when working with vim colors
" color chart -
"   http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png

set background=dark

hi clear

if exists('syntax_on')
   syntax reset
endif

if has('gui_running')
    set background=dark
endif

let colors_name = 'fixxx2'

if version >= 700
  hi CursorLine   ctermfg=NONE  ctermbg=235  cterm=NONE guifg=NONE guibg=#181818 gui=none
  hi CursorColumn guibg=#181818
  hi MatchParen   guifg=#DFCA00 guibg=#06000A gui=bold
  hi Pmenu        guifg=#FFFFFF guibg=#252525
  hi Pmenu        ctermfg=15   ctermbg=234  cterm=NONE guifg=#FFFFFF guibg=#252525
  hi PmenuSel     ctermfg=0    ctermbg=227  cterm=NONE guifg=#FAC539 guibg=#000000
endif

" General colors
hi Cursor               ctermfg=16   ctermbg=231  cterm=NONE
hi Normal               ctermfg=253  ctermbg=234  cterm=NONE
hi LineNr               ctermfg=238  ctermbg=234  cterm=NONE

hi ErrorMsg             ctermfg=1    ctermbg=NONE cterm=NONE
hi Search               ctermfg=16   ctermbg=185  cterm=NONE
hi Ignore               ctermfg=240  ctermbg=NONE cterm=NONE

hi clear SpellBad
hi SpellBad             ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellCap             ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare            ctermfg=226  ctermbg=NONE cterm=underline
hi SpellLocal           ctermfg=178  ctermbg=NONE cterm=underline

hi DiffAdd              ctermfg=16   ctermbg=119  cterm=NONE
hi DiffDelete           ctermfg=15   ctermbg=197  cterm=NONE
hi DiffChange           ctermfg=250  ctermbg=237  cterm=NONE
hi DiffText             ctermfg=16   ctermbg=39   cterm=NONE

" Syntax highlighting
hi Comment              ctermfg=183  ctermbg=NONE cterm=NONE
hi Constant             ctermfg=153  ctermbg=NONE cterm=NONE " self, nil, numbers
hi Function             ctermfg=147  ctermbg=NONE cterm=NONE
hi Identifier           ctermfg=141  ctermbg=NONE cterm=NONE " ctrl-p matches, block vars
hi Include              ctermfg=121  ctermbg=NONE cterm=NONE
hi Keyword              ctermfg=39   ctermbg=NONE cterm=NONE " class, module, def, end
hi Number               ctermfg=198  ctermbg=NONE cterm=NONE
hi Operator             ctermfg=201  ctermbg=NONE cterm=NONE
hi PreProc              ctermfg=118  ctermbg=NONE cterm=bold " #!, #include
hi Regexp               ctermfg=190  ctermbg=NONE cterm=NONE
hi Special              ctermfg=111  ctermbg=NONE cterm=NONE " #{}, <leader, <CR>
hi SpecialComment       ctermfg=183  ctermbg=NONE cterm=bold
hi Statement            ctermfg=75   ctermbg=NONE cterm=NONE " if, return, unless, begin, recue
hi String               ctermfg=83   ctermbg=NONE cterm=NONE
hi Todo                 ctermfg=165  ctermbg=NONE cterm=bold
hi Type                 ctermfg=81   ctermbg=NONE cterm=NONE " class names, ctermfg
hi Variable             ctermfg=141  ctermbg=NONE cterm=NONE " ivars
hi Visual               ctermfg=231  ctermbg=124   cterm=NONE
hi Label                ctermfg=9    ctermbg=57   cterm=NONE
hi Character            ctermfg=9    ctermbg=57   cterm=NONE
hi Title                ctermfg=229  ctermbg=NONE cterm=bold

hi rubyAccess           ctermfg=141  ctermbg=NONE cterm=NONE
hi rubyDefine           ctermfg=39   ctermbg=NONE cterm=NONE

