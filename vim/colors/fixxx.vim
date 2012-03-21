" This color scheme will make your MacVim sing like Angels


set background=dark

if has("gui_running")
    set background=dark
endif

hi clear

if exists("syntax_on")
   syntax reset
endif

let colors_name = "fixxx"

if version >= 700
  hi CursorLine   guibg=#181818
  hi CursorColumn guibg=#181818
  hi MatchParen   guifg=#DFCA00 guibg=#06000A gui=bold
  hi Pmenu        guifg=#FFFFFF guibg=#252525
  hi PmenuSel     guifg=#FAC539 guibg=#000000
endif

" TODO:
" fix plain text color in html files
"

" General colors
hi Cursor         guifg=#000000 guibg=#FFFFFF gui=none
hi Normal         guifg=#FFFAFA guibg=#06000A gui=none
hi NonText        guifg=#FF0000 guibg=#06000A gui=none
hi LineNr         guifg=#38475f guibg=#181818 gui=none
hi StatusLine     guifg=#FFFFFF guibg=#333333 gui=italic
hi StatusLineNC   guifg=#CCCCCC guibg=#222222 gui=none
hi VertSplit      guifg=#FFFFFF guibg=#06000A gui=none
hi Folded         guifg=#FFFFFF guibg=#06000A gui=none
hi Title          guifg=#FFFFFF guibg=NONE    gui=none
hi Visual         guifg=#FFEBFB guibg=#2c3942 gui=none
hi SpecialKey     guifg=#FF0000 guibg=#323232 gui=none

hi ErrorMsg       guifg=NONE    guibg=#E93600 gui=none
hi Search         guifg=#D2F72D guibg=#06000A gui=underline

" Syntax highlighting
hi Comment              guifg=#B0C5B8 guibg=#171717 gui=italic
hi Todo                 guifg=#87D350 guibg=#171717 gui=italic
hi Constant             guifg=#87D350 gui=none " self
hi Number               guifg=#FFD07F gui=none
hi Identifier           guifg=#fc63c4 gui=none " ctrl-p matches, block vars
hi Type                 guifg=#3482CF gui=none
hi Statement            guifg=#91caff gui=none " if, return, unless, begin, recue
hi PreProc              guifg=#b7bbff gui=none
hi Function             guifg=#fcc9ff gui=none
hi Special              guifg=#fea400 gui=none
hi Keyword              guifg=#de98ff gui=none " def end
hi String               guifg=#45d353 guibg=#161616 gui=none
hi Operator             guifg=#FF0000
hi Regexp               guifg=#fb61e7 gui=none
hi Variable             guifg=#55e4ff gui=none " ivars
hi rubyConstant         guifg=#ffc52e gui=none
" hi rubyConstant         guifg=#FFFF00 gui=none
hi javascriptIdentifier guifg=#FF7D00 gui=none
hi javascriptType       guifg=#E7E709 gui=none
hi rubyMethod           guifg=#b7bbff gui=none " attr_accessor, private, protected
hi railsMethod          guifg=#fd8e8e gui=none " around_filter, before_filter, render, form_tag
hi rubySymbol           guifg=#c4ff97 gui=none

hi rubyRailsARMethod            guifg=#99FF00 gui=none
hi rubyRailsARAssociationMethod guifg=#99FF00 gui=none
hi rubyRailsARCallbackMethod    guifg=#99FF00 gui=none
hi rubyRailsARClassMethod       guifg=#99FF00 gui=none
hi rubyRailsARValidationMethod  guifg=#99FF00 gui=none

hi link rubyInterpolation Number

hi link railsUserMethod         PreProc
hi link rubyRegexp              Regexp
hi link rubyRailsMethod         railsMethod
hi link rubyRailsUserMethod     railsMethod
hi link rubyRailsTestMethod     railsMethod
hi link rubyRailsTestMacro      Keyword
hi link rubyDefine              Keyword
hi link rubyAccess              rubyMethod
hi link rubyAttribute           rubyMethod
hi link rubyEval                rubyMethod
hi link rubyException           rubyMethod
hi link rubyInclude             rubyMethod
hi link rubyStringDelimiter     rubyString
hi link rubyRegexp              Regexp
hi link rubyRegexpDelimiter     rubyRegexp
hi link rubyOperator            Operator
"hi link rubyGlobalVariable     Variable
hi link rubyClassVariable       Variable
hi link rubyInstanceVariable    Variable
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant
hi link javascriptVariable      Variable
hi link javascriptOperator      Operator

