" matrix.vim — green phosphor with amber/cyan accents, transparent bg
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "matrix"

" core — no bg, let terminal transparency show
hi Normal       guifg=#66ff66 guibg=NONE    ctermfg=46  ctermbg=NONE
hi NonText      guifg=#0a4a0a guibg=NONE    ctermfg=22  ctermbg=NONE
hi EndOfBuffer  guifg=#0a4a0a guibg=NONE    ctermfg=22  ctermbg=NONE
hi LineNr       guifg=#1a801a guibg=NONE    ctermfg=28  ctermbg=NONE
hi CursorLine                 guibg=#001a00              ctermbg=NONE cterm=NONE
hi CursorLineNr guifg=#a0ffa0 guibg=NONE    ctermfg=156 ctermbg=NONE cterm=bold
hi Cursor       guifg=#000000 guibg=#66ff66
hi Visual                     guibg=#004400              ctermbg=22
hi Search       guifg=#000000 guibg=#ffcc33 ctermfg=0   ctermbg=214
hi IncSearch    guifg=#000000 guibg=#a0ffa0 ctermfg=0   ctermbg=156
hi StatusLine   guifg=#1a801a guibg=NONE    ctermfg=28  ctermbg=NONE cterm=bold
hi StatusLineNC guifg=#1a801a guibg=NONE    ctermfg=28  ctermbg=NONE
hi VertSplit    guifg=#1a801a guibg=NONE    ctermfg=28  ctermbg=NONE
hi Pmenu        guifg=#66ff66 guibg=#001100 ctermfg=46  ctermbg=22
hi PmenuSel     guifg=#000000 guibg=#66ff66 ctermfg=0   ctermbg=46
hi Folded       guifg=#1a801a guibg=NONE    ctermfg=28  ctermbg=NONE

" syntax — phosphor palette with amber/cyan accents for differentiation
hi Comment      guifg=#1a7a1a guibg=NONE ctermfg=28  cterm=italic
hi Constant     guifg=#ffdd33 guibg=NONE ctermfg=221
hi String       guifg=#ffff66 guibg=NONE ctermfg=228
hi Character    guifg=#ffff66 guibg=NONE ctermfg=228
hi Number       guifg=#66ccff guibg=NONE ctermfg=86
hi Boolean      guifg=#ffdd33 guibg=NONE ctermfg=214 cterm=bold
hi Float        guifg=#66ccff guibg=NONE ctermfg=86
hi Identifier   guifg=#99ff99 guibg=NONE ctermfg=120
hi Function     guifg=#ccffcc guibg=NONE ctermfg=194 cterm=bold
hi Statement    guifg=#33ff33 guibg=NONE ctermfg=46  cterm=bold
hi Conditional  guifg=#33ff33 guibg=NONE ctermfg=46  cterm=bold
hi Repeat       guifg=#33ff33 guibg=NONE ctermfg=46  cterm=bold
hi Keyword      guifg=#66ff33 guibg=NONE ctermfg=82  cterm=bold
hi Exception    guifg=#ff6633 guibg=NONE ctermfg=202 cterm=bold
hi PreProc      guifg=#88ddff guibg=NONE ctermfg=122
hi Include      guifg=#88ddff guibg=NONE ctermfg=122 cterm=bold
hi Define       guifg=#88ddff guibg=NONE ctermfg=122
hi Macro        guifg=#88ddff guibg=NONE ctermfg=122
hi Type         guifg=#ccff66 guibg=NONE ctermfg=191 cterm=bold
hi StorageClass guifg=#ccff66 guibg=NONE ctermfg=191
hi Structure    guifg=#ccff66 guibg=NONE ctermfg=191
hi Typedef      guifg=#ccff66 guibg=NONE ctermfg=191
hi Special      guifg=#ffdd33 guibg=NONE ctermfg=227
hi SpecialChar  guifg=#ffdd33 guibg=NONE ctermfg=227
hi Operator     guifg=#66ff66 guibg=NONE ctermfg=46
hi Delimiter    guifg=#99ff99 guibg=NONE ctermfg=120
hi Todo         guifg=#000000 guibg=#ffcc33 ctermfg=0 ctermbg=214 cterm=bold
hi Error        guifg=#ff3333 guibg=NONE ctermfg=196 cterm=bold
hi ErrorMsg     guifg=#ff3333 guibg=NONE ctermfg=196 cterm=bold
hi WarningMsg   guifg=#ffdd33 guibg=NONE ctermfg=227
hi MatchParen   guifg=#000000 guibg=#a0ffa0 ctermfg=0  ctermbg=156 cterm=bold
hi Title        guifg=#a0ffa0 guibg=NONE ctermfg=156 cterm=bold

hi DiffAdd      guifg=#66ff66 guibg=#002200 ctermfg=46  ctermbg=22
hi DiffChange                 guibg=#002200              ctermbg=22
hi DiffDelete   guifg=#ff6666 guibg=#220000 ctermfg=203 ctermbg=52
hi DiffText     guifg=#a0ffa0 guibg=#004400 ctermfg=156 ctermbg=22 cterm=bold
