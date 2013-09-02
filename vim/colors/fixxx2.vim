" This color scheme will make your MacVim sing like Angels

" :highlight and :syntax are helpful when working with vim colors
" color chart -
"   http://upload.wikimedia.org/wikipedia/commons/9/95/Xterm_color_chart.png

set background=dark

if has('gui_running')
    set background=dark
endif

hi clear

if exists('syntax_on')
   syntax reset
endif

let colors_name = 'fixxx_console'

if version >= 700
  hi CursorLine   ctermfg=NONE  ctermbg=235  cterm=NONE guifg=NONE guibg=#181818 gui=none
  hi CursorColumn guibg=#181818
  hi MatchParen   guifg=#DFCA00 guibg=#06000A gui=bold
  hi Pmenu        guifg=#FFFFFF guibg=#252525
  hi Pmenu        ctermfg=15   ctermbg=234  cterm=NONE guifg=#FFFFFF guibg=#252525
  hi PmenuSel     ctermfg=0    ctermbg=227  cterm=NONE guifg=#FAC539 guibg=#000000
endif

" TODO: fix plain text color in html files

" General colors
hi Cursor               ctermfg=16   ctermbg=231  cterm=NONE
hi Normal               ctermfg=253  ctermbg=234  cterm=NONE
hi LineNr               ctermfg=238  ctermbg=234  cterm=NONE

hi ErrorMsg             ctermfg=1    ctermbg=NONE cterm=NONE
hi Search               ctermfg=16   ctermbg=185  cterm=NONE

hi clear SpellBad
hi SpellBad             ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellCap             ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare            ctermfg=226  ctermbg=NONE cterm=underline
hi SpellLocal           ctermfg=178  ctermbg=NONE cterm=underline

hi DiffAdd              ctermfg=15   ctermbg=28   cterm=NONE      guifg=NONE

" Syntax highlighting
hi Comment              ctermfg=183  ctermbg=NONE cterm=NONE
hi Constant             ctermfg=153  ctermbg=NONE cterm=NONE " self, nil, numbers
hi Function             ctermfg=147  ctermbg=NONE cterm=NONE
hi Identifier           ctermfg=141  ctermbg=NONE cterm=NONE " ctrl-p matches, block vars
hi Include              ctermfg=159  ctermbg=NONE cterm=NONE
hi Keyword              ctermfg=39   ctermbg=NONE cterm=NONE " class, module, def, end
hi Number               ctermfg=214  ctermbg=NONE cterm=NONE
hi Operator             ctermfg=119  ctermbg=NONE cterm=NONE
hi PreProc              ctermfg=178  ctermbg=NONE cterm=bold " #!, #include
hi Regexp               ctermfg=190  ctermbg=NONE cterm=NONE
hi Special              ctermfg=111  ctermbg=NONE cterm=NONE " #{}, <leader, <CR>
hi SpecialComment       ctermfg=183  ctermbg=NONE cterm=bold
hi Statement            ctermfg=75   ctermbg=NONE cterm=NONE " if, return, unless, begin, recue
hi String               ctermfg=83   ctermbg=NONE cterm=NONE
hi Todo                 ctermfg=2    ctermbg=NONE cterm=bold
hi Type                 ctermfg=81   ctermbg=NONE cterm=NONE " class names, ctermfg
hi Variable             ctermfg=141  ctermbg=NONE cterm=NONE " ivars
hi Visual               ctermfg=231  ctermbg=57   cterm=NONE
hi Label                ctermfg=9    ctermbg=57   cterm=NONE
hi Character            ctermfg=9    ctermbg=57   cterm=NONE
hi Title                ctermfg=229  ctermbg=NONE cterm=bold

hi rubyAccess           ctermfg=141  ctermbg=NONE cterm=NONE

