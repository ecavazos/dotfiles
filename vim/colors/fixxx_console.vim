" This color scheme will make your MacVim sing like Angels

" :highlight and :syntax are helpful when working with vim colors

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
  hi CursorLine   ctermfg=NONE  ctermbg=234  cterm=NONE guifg=NONE guibg=#181818 gui=none
  hi CursorColumn guibg=#181818
  hi MatchParen   guifg=#DFCA00 guibg=#06000A gui=bold
  hi Pmenu        guifg=#FFFFFF guibg=#252525
  hi Pmenu        ctermfg=15   ctermbg=234  cterm=NONE guifg=#FFFFFF guibg=#252525
  hi PmenuSel     ctermfg=0    ctermbg=227  cterm=NONE guifg=#FAC539 guibg=#000000
endif

" TODO: fix plain text color in html files

" General colors
hi Cursor               ctermfg=16   ctermbg=231  cterm=NONE      guifg=#000000 guibg=#FFFFFF gui=none
hi Normal               ctermfg=231  ctermbg=233  cterm=NONE      guifg=#FFFAFA guibg=#06000A gui=none
hi LineNr               ctermfg=238  ctermbg=234  cterm=NONE      guifg=#38475f guibg=#181818 gui=none

hi ErrorMsg             ctermfg=1    ctermbg=NONE cterm=NONE      guifg=NONE    guibg=#E93600 gui=none
hi SpellBad             ctermfg=208  ctermbg=NONE cterm=underline guifg=NONE    guibg=#E93600 gui=none
hi SpellRare            ctermfg=226  ctermbg=NONE cterm=underline guifg=NONE    guibg=#E93600 gui=none
hi SpellLocal           ctermfg=178  ctermbg=NONE cterm=underline guifg=NONE    guibg=#E93600 gui=none
hi Search               ctermfg=16   ctermbg=185  cterm=NONE      guifg=#D2F72D guibg=#06000A gui=underline

" Syntax highlighting
hi Comment              ctermfg=243  ctermbg=NONE cterm=NONE     guifg=#B0C5B8 guibg=#171717 gui=italic
hi Todo                 ctermfg=2    ctermbg=NONE cterm=bold     guifg=#87D350 guibg=#171717 gui=italic
hi Identifier           ctermfg=121  ctermbg=NONE cterm=NONE     guifg=#FC63C4 guibg=NONE    gui=none    " ctrl-p matches, block vars
hi Type                 ctermfg=155  ctermbg=NONE cterm=NONE     guifg=#67A2F0 guibg=NONE    gui=none    " class names, ctermfg
hi Statement            ctermfg=183  ctermbg=NONE cterm=NONE     guifg=#91CAFF guibg=NONE    gui=none    " if, return, unless, begin, recue
hi Special              ctermfg=111  ctermbg=NONE cterm=NONE     guifg=#FEA400 guibg=NONE    gui=none    " #{}, <leader, <CR>
hi Keyword              ctermfg=75   ctermbg=NONE cterm=NONE     guifg=#DE98FF guibg=NONE    gui=none    " class, module, def, end
hi String               ctermfg=47   ctermbg=234  cterm=NONE     guifg=#45D353 guibg=#161616 gui=none
hi Constant             ctermfg=13   ctermbg=NONE cterm=NONE     guifg=#87D350 guibg=NONE    gui=none    " self
hi Function             ctermfg=117  ctermbg=NONE cterm=NONE     guifg=#FCC9FF guibg=NONE    gui=none
hi PreProc              ctermfg=250  ctermbg=NONE cterm=NONE     guifg=NONE    guibg=NONE    gui=none    " #!, #include
hi Regexp               ctermfg=190  ctermbg=NONE cterm=NONE     guifg=#FB61E7 gui=none
hi Visual               ctermfg=231  ctermbg=57   cterm=NONE     guifg=#FFEBFB guibg=#2c3942 gui=none
hi Variable             ctermfg=154  ctermbg=NONE cterm=NONE     guifg=#55E4FF guibg=NONE    gui=none    " ivars
hi rubyConstant         ctermfg=33   ctermbg=NONE cterm=NONE     guifg=#67A2F0 guibg=NONE    gui=none   " ruby class names
hi rubyMethod           ctermfg=190  ctermbg=NONE cterm=NONE     guifg=#B7BBFF guibg=NONE    gui=none    " require, attr_accessor, private, protected
hi rubySymbol           ctermfg=156  ctermbg=NONE cterm=NONE     guifg=#fffc68 guibg=NONE    gui=none
hi rubyInterpolation    ctermfg=182  ctermbg=NONE cterm=NONE     guifg=#BFDDA6 guibg=NONE    gui=none
hi railsMethod          ctermfg=75   ctermbg=NONE cterm=NONE     guifg=#867EF4 guibg=NONE    gui=none    " delegate, around_filter, before_filter, render, form_tag
hi rubyRailsARMethod    ctermfg=159  ctermbg=NONE cterm=NONE     guifg=#867EF4 guibg=NONE    gui=none

" * * * * * * * * * * * * * * * * * * * * *
" TODO: needs cterm colors
" * * * * * * * * * * * * * * * * * * * * *

" hi NonText        guifg=#FF0000 guibg=#06000A gui=none
" hi StatusLine     guifg=#FFFFFF guibg=#333333 gui=italic
" hi StatusLineNC   guifg=#CCCCCC guibg=#222222 gui=none
" hi VertSplit      guifg=#FFFFFF guibg=#06000A gui=none
" hi Folded         guifg=#FFFFFF guibg=#06000A gui=none
" hi Title          guifg=#FFFFFF guibg=NONE    gui=none
" hi SpecialKey     guifg=#FF0000 guibg=#323232 gui=none

" hi Number               guifg=#FFD07F gui=none
" hi Operator             guifg=#FF0000
" hi javascriptIdentifier guifg=#FF7D00 gui=none
" hi javascriptType       guifg=#E7E709 gui=none

" * * * * * * * * * * * * * * * * * * * * *
" Linked colors
" * * * * * * * * * * * * * * * * * * * * *

hi link rubyRailsARAssociationMethod rubyRailsARMethod " belongs_to, has_many, has_one
hi link rubyRailsARValidationMethod  rubyRailsARMethod " validates
hi link rubyRailsARCallbackMethod    rubyRailsARMethod
hi link rubyRailsARClassMethod       rubyRailsARMethod
hi link railsUserMethod              PreProc
hi link rubyRegexp                   Regexp
hi link rubyRailsMethod              railsMethod
hi link rubyRailsUserMethod          railsMethod
hi link rubyRailsTestMethod          railsMethod
hi link rubyRailsTestMacro           Keyword
hi link rubyDefine                   Keyword
hi link rubyAccess                   rubyMethod
hi link rubyAttribute                rubyMethod
hi link rubyEval                     rubyMethod
hi link rubyException                rubyMethod
hi link rubyInclude                  rubyMethod
hi link rubyStringDelimiter          rubyString
hi link rubyRegexp                   Regexp
hi link rubyRegexpDelimiter          rubyRegexp
hi link rubyOperator                 Operator
"hi link rubyGlobalVariable          Variable
hi link rubyClassVariable            Variable
hi link rubyInstanceVariable         Variable
hi link javascriptRegexpString       Regexp
hi link javascriptNumber             Number
hi link javascriptNull               Constant
hi link javascriptVariable           Variable
hi link javascriptOperator           Operator

