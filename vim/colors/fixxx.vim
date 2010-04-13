set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "fixxx"

if version >= 700
  hi CursorLine   guibg=#181818
  hi CursorColumn guibg=#181818
  hi MatchParen   guifg=#DFCA00 guibg=#06000A gui=bold
  hi Pmenu        guifg=#FFFFFF guibg=#14369B
  hi PmenuSel     guifg=#FAC539 guibg=#181818
endif

" General colors
hi Cursor         guifg=#000000 guibg=#FFFFFF gui=none
hi Normal         guifg=#FFFAFA guibg=#06000A gui=none
hi NonText        guifg=#FF0000 guibg=#06000A gui=none
hi LineNr         guifg=#696969 guibg=#181818 gui=none
hi StatusLine     guifg=#999999 guibg=#181818 gui=italic
hi StatusLineNC   guifg=#FFFFFF guibg=#06000A gui=none
hi VertSplit      guifg=#FFFFFF guibg=#06000A gui=none
hi Folded         guifg=#FFFFFF guibg=#06000A gui=none
hi Title          guifg=#FF0000 guibg=NONE    gui=bold
hi Visual         guifg=#FFEBFB guibg=#690054 gui=none
hi SpecialKey     guifg=#FF0000 guibg=#323232 gui=none

" Syntax highlighting
hi Comment              guifg=#B0C5B8 guibg=#171717 gui=italic
hi Constant             guifg=#87D350 gui=none
hi Number               guifg=#B076DA gui=none
hi Identifier           guifg=#FFFFFF gui=underline
hi Statement            guifg=#62CE00 gui=none
hi Function             guifg=#1E90FF gui=none
hi Special              guifg=#CCFFFF gui=none
hi PreProc              guifg=#63E03D gui=none
hi Keyword              guifg=#FF44A5 gui=none
hi String               guifg=#EC1FFF guibg=#202020 gui=none
hi Type                 guifg=#3482CF gui=none

hi rubyMethod           guifg=#62CE00 gui=none
hi Regexp               guifg=#FF0000 gui=none
hi rubyRegexp           guifg=#FF0000 gui=none
hi Variable             guifg=#C7F07A gui=none
hi rubyConstant         guifg=#FFFF00 gui=none
hi javascriptIdentifier guifg=#FF7D00 gui=none
hi javascriptType       guifg=#E7E709 gui=none

hi link railsMethod             PreProc
hi link rubyDefine              Keyword
hi link rubySymbol              Constant
hi link rubyAccess              rubyMethod
hi link rubyAttribute           rubyMethod
hi link rubyEval                rubyMethod
hi link rubyException           rubyMethod
hi link rubyInclude             rubyMethod
hi link rubyStringDelimiter     rubyString
hi link rubyRegexp              Regexp
hi link rubyRegexpDelimiter     rubyRegexp
"hi link rubyGlobalVariable     Variable
hi link rubyClassVariable       Variable
hi link rubyInstanceVariable    Variable
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant
hi link javascriptVariable      Variable

