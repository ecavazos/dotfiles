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
hi LineNr         guifg=#696969 guibg=#181818 gui=none
hi StatusLine     guifg=#999999 guibg=#181818 gui=italic
hi StatusLineNC   guifg=#FFFFFF guibg=#06000A gui=none
hi VertSplit      guifg=#FFFFFF guibg=#06000A gui=none
hi Folded         guifg=#FFFFFF guibg=#06000A gui=none
hi Title          guifg=#FFFFFF guibg=NONE    gui=none
hi Visual         guifg=#FFEBFB guibg=#690054 gui=none
hi SpecialKey     guifg=#FF0000 guibg=#323232 gui=none

hi ErrorMsg       guifg=NONE    guibg=#E93600 gui=none
hi Search         guifg=#222222 guibg=#D2F72D


" Syntax highlighting
hi Comment              guifg=#B0C5B8 guibg=#171717 gui=italic
hi Todo                 guifg=#FFA047 guibg=#171717 gui=none
hi Number               guifg=#B076DA gui=none
hi Constant             guifg=#87D350 gui=none
hi Identifier           guifg=#3482CF gui=none
hi Type                 guifg=#3482CF gui=none
hi Statement            guifg=#62CE00 gui=none
hi PreProc              guifg=#63E03D gui=none
hi Function             guifg=#1E90FF gui=none
hi Special              guifg=#CCFFFF gui=none
hi Keyword              guifg=#FF44A5 gui=none
hi String               guifg=#4791FF guibg=#202020 gui=none

hi rubyMethod           guifg=#62CE00 gui=none
hi Regexp               guifg=#FF0000 gui=none
hi rubyRegexp           guifg=#FF0000 gui=none
hi Variable             guifg=#C7F07A gui=none
hi rubyConstant         guifg=#FFFF00 gui=none
hi javascriptIdentifier guifg=#FF7D00 gui=none
hi javascriptType       guifg=#E7E709 gui=none

hi link railsMethod             PreProc
hi link railsUserMethod         PreProc
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

