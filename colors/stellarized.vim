" Name:         stellarized
" Author:       nightsense
" Maintainer:   nightsense
" License:      MIT

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[stellarized] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'stellarized'

if &background ==# 'dark'
  " Color similarity table (dark background)
  " blue: GUI=#7296ba/rgb(114,150,186)  Term= 67 #5f87af/rgb( 95,135,175)  [delta=5.457633]
  " red_: GUI=#b78678/rgb(183,134,120)  Term=138 #af8787/rgb(175,135,135)  [delta=6.190934]
  " gren: GUI=#7b9a73/rgb(123,154,115)  Term=108 #87af87/rgb(135,175,135)  [delta=6.381246]
  " yllw: GUI=#c2ac4e/rgb(194,172, 78)  Term=179 #d7af5f/rgb(215,175, 95)  [delta=6.556508]
  " gry0: GUI=#282835/rgb( 40, 40, 53)  Term=235 #262626/rgb( 38, 38, 38)  [delta=8.139087]
  " gry4: GUI=#f2e5d4/rgb(242,229,212)  Term=254 #e4e4e4/rgb(228,228,228)  [delta=8.294770]
  " gry3: GUI=#c0b19d/rgb(192,177,157)  Term=180 #d7af87/rgb(215,175,135)  [delta=9.033624]
  " gry1: GUI=#353646/rgb( 53, 54, 70)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=9.147906]
  " gry2: GUI=#9b8c7a/rgb(155,140,122)  Term=137 #af875f/rgb(175,135, 95)  [delta=9.637249]
  hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Normal ctermfg=180 ctermbg=235 guifg=#c0b19d guibg=#282835 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Comment ctermfg=137 ctermbg=NONE guifg=#9b8c7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=137 ctermbg=NONE guifg=#9b8c7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=137 ctermbg=NONE guifg=#9b8c7a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=180 ctermbg=235 guifg=#c0b19d guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=180 ctermbg=235 guifg=#c0b19d guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursor ctermfg=180 ctermbg=235 guifg=#c0b19d guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VertSplit ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Folded ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi PmenuSel ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SignColumn ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLine ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi StatusLineTerm ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TabLineSel ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TermCursorNC ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Visual ctermfg=137 ctermbg=235 guifg=#9b8c7a guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ColorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi QuickFixLine ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi VisualNOS ctermfg=NONE ctermbg=237 guifg=NONE guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=180 ctermbg=237 guifg=#c0b19d guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=137 ctermbg=137 guifg=#9b8c7a guibg=#9b8c7a guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=180 ctermbg=180 guifg=#c0b19d guibg=#c0b19d guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=137 ctermbg=137 guifg=#9b8c7a guibg=#9b8c7a guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=237 ctermbg=237 guifg=#353646 guibg=#353646 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StorageClass ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Structure ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Type ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Typedef ctermfg=138 ctermbg=NONE guifg=#b78678 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffDelete ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffRemoved ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Error ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi ErrorMsg ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi TooLong ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi WarningMsg ctermfg=138 ctermbg=235 guifg=#b78678 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Conditional ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Exception ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Label ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Repeat ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Include ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Macro ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreCondit ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi PreProc ctermfg=108 ctermbg=NONE guifg=#7b9a73 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffAdd ctermfg=108 ctermbg=235 guifg=#7b9a73 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffAdded ctermfg=108 ctermbg=235 guifg=#7b9a73 guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Boolean ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Character ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Float ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Debug ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Delimiter ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Special ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialChar ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialComment ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpecialKey ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Tag ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi Todo ctermfg=67 ctermbg=NONE guifg=#7296ba guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi SpellBad ctermfg=67 ctermbg=235 guifg=#7296ba guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellLocal ctermfg=67 ctermbg=235 guifg=#7296ba guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellCap ctermfg=67 ctermbg=235 guifg=#7296ba guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi SpellRare ctermfg=67 ctermbg=235 guifg=#7296ba guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChanged ctermfg=179 ctermbg=235 guifg=#c2ac4e guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=179 ctermbg=235 guifg=#c2ac4e guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi MatchParen ctermfg=179 ctermbg=235 guifg=#c2ac4e guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Search ctermfg=179 ctermbg=235 guifg=#c2ac4e guibg=#282835 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  finish
endif

" Color similarity table (light background)
" blue: GUI=#0068c0/rgb(  0,104,192)  Term= 25 #005faf/rgb(  0, 95,175)  [delta=3.618853]
" yllw: GUI=#c5ab22/rgb(197,171, 34)  Term=178 #d7af00/rgb(215,175,  0)  [delta=4.347792]
" red_: GUI=#ad3923/rgb(173, 57, 35)  Term=124 #af0000/rgb(175,  0,  0)  [delta=6.157544]
" gry0: GUI=#fffce8/rgb(255,252,232)  Term=230 #ffffd7/rgb(255,255,215)  [delta=6.463911]
" gren: GUI=#017306/rgb(  1,115,  6)  Term= 22 #005f00/rgb(  0, 95,  0)  [delta=6.532096]
" gry2: GUI=#6a6b81/rgb(106,107,129)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=7.467064]
" gry1: GUI=#f2e5d4/rgb(242,229,212)  Term=254 #e4e4e4/rgb(228,228,228)  [delta=8.294770]
" gry4: GUI=#353646/rgb( 53, 54, 70)  Term=237 #3a3a3a/rgb( 58, 58, 58)  [delta=9.147906]
" gry3: GUI=#4c4d61/rgb( 76, 77, 97)  Term= 60 #5f5f87/rgb( 95, 95,135)  [delta=9.841426]
hi Bold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conceal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi EndOfBuffer ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Italic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi ModeMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Normal ctermfg=60 ctermbg=230 guifg=#4c4d61 guibg=#fffce8 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Comment ctermfg=60 ctermbg=NONE guifg=#6a6b81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=60 ctermbg=NONE guifg=#6a6b81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=60 ctermbg=NONE guifg=#6a6b81 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=60 ctermbg=230 guifg=#4c4d61 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=60 ctermbg=230 guifg=#4c4d61 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursor ctermfg=60 ctermbg=230 guifg=#4c4d61 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VertSplit ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Folded ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi PmenuSel ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SignColumn ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLine ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi StatusLineTerm ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TabLineSel ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TermCursorNC ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Visual ctermfg=60 ctermbg=230 guifg=#6a6b81 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ColorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi QuickFixLine ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi VisualNOS ctermfg=NONE ctermbg=254 guifg=NONE guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=60 ctermbg=254 guifg=#4c4d61 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=60 ctermbg=60 guifg=#6a6b81 guibg=#6a6b81 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=60 ctermbg=60 guifg=#4c4d61 guibg=#4c4d61 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=60 ctermbg=60 guifg=#6a6b81 guibg=#6a6b81 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=254 ctermbg=254 guifg=#f2e5d4 guibg=#f2e5d4 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StorageClass ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Structure ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Type ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Typedef ctermfg=124 ctermbg=NONE guifg=#ad3923 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffDelete ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffRemoved ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Error ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi ErrorMsg ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi TooLong ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi WarningMsg ctermfg=124 ctermbg=230 guifg=#ad3923 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Conditional ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Exception ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Label ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Repeat ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Include ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Macro ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreCondit ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi PreProc ctermfg=22 ctermbg=NONE guifg=#017306 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffAdd ctermfg=22 ctermbg=230 guifg=#017306 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffAdded ctermfg=22 ctermbg=230 guifg=#017306 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Boolean ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Character ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Float ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Debug ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Delimiter ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Special ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialChar ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialComment ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpecialKey ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Tag ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Todo ctermfg=25 ctermbg=NONE guifg=#0068c0 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SpellBad ctermfg=25 ctermbg=230 guifg=#0068c0 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellLocal ctermfg=25 ctermbg=230 guifg=#0068c0 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellCap ctermfg=25 ctermbg=230 guifg=#0068c0 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi SpellRare ctermfg=25 ctermbg=230 guifg=#0068c0 guibg=#fffce8 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChanged ctermfg=178 ctermbg=237 guifg=#c5ab22 guibg=#353646 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=178 ctermbg=237 guifg=#c5ab22 guibg=#353646 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi MatchParen ctermfg=178 ctermbg=237 guifg=#c5ab22 guibg=#353646 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Search ctermfg=178 ctermbg=237 guifg=#c5ab22 guibg=#353646 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
finish

" Background: light
" Color:      gry0 #fffce8 ~
" Color:      gry1 #f2e5d4 ~
" Color:      gry2 #6a6b81 ~
" Color:      gry3 #4c4d61 ~
" Color:      gry4 #353646 ~
" Color:      yllw #c5ab22 ~
" Color:      red_ #ad3923 ~
" Color:      gren #017306 ~
" Color:      blue #0068c0 ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gry3   gry0   reverse
" IncSearch          gry3   gry0   reverse
" TermCursor         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" StatusLine         gry2   gry0   reverse
" StatusLineTerm     gry2   gry0   reverse
" TabLineSel         gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" WildMenu           gry3   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gry4 reverse
" DiffText    yllw gry4 reverse
" MatchParen  yllw gry4 reverse
" Search      yllw gry4 reverse
" Background: dark
" Color:      gry0 #282835 ~
" Color:      gry1 #353646 ~
" Color:      gry2 #9b8c7a ~
" Color:      gry3 #c0b19d ~
" Color:      gry4 #f2e5d4 ~
" Color:      yllw #c2ac4e ~
" Color:      red_ #b78678 ~
" Color:      gren #7b9a73 ~
" Color:      blue #7296ba ~
" Bold               none   none   bold
" Conceal            none   none
" DiffChange         none   none
" Directory          none   none   bold
" EndOfBuffer        none   none
" FoldColumn         none   none
" Ignore             none   none
" Italic             none   none   italic
" ModeMsg            none   none
" MoreMsg            none   none
" NonText            none   none
" Normal             gry3   gry0
" Question           none   none
" Terminal           none   none
" Title              none   none   bold
" Underlined         none   none   underline
" Comment            gry2   none
" CursorLineNr       gry2   none
" LineNr             gry2   none
" Cursor             gry3   gry0   reverse
" IncSearch          gry3   gry0   reverse
" TermCursor         gry3   gry0   reverse
" VertSplit          gry2   gry0   reverse
" Folded             gry2   gry0   reverse
" PmenuSel           gry2   gry0   reverse
" SignColumn         gry2   gry0   reverse
" StatusLine         gry2   gry0   reverse
" StatusLineTerm     gry2   gry0   reverse
" TabLineSel         gry2   gry0   reverse
" TermCursorNC       gry2   gry0   reverse
" Visual             gry2   gry0   reverse
" ColorColumn        none   gry1
" CursorColumn       none   gry1
" CursorLine         none   gry1
" Pmenu              gry3   gry1
" QuickFixLine       none   gry1
" StatusLineNC       gry3   gry1
" StatusLineTermNC   gry3   gry1
" TabLine            gry3   gry1
" ToolbarButton      gry3   gry1   bold
" VisualNOS          none   gry1
" WildMenu           gry3   gry1
" PmenuSbar          gry2   gry2
" PmenuThumb         gry3   gry3
" TabLineFill        gry2   gry2
" ToolbarLine        gry1   gry1
" Function           red_   none
" Identifier         red_   none
" StorageClass       red_   none   bold
" Structure          red_   none   bold
" Type               red_   none   bold
" Typedef            red_   none   bold
" DiffDelete         red_   gry0   reverse
" DiffRemoved        red_   gry0   reverse
" Error              red_   gry0   reverse
" ErrorMsg           red_   gry0   reverse
" TooLong            red_   gry0   reverse
" WarningMsg         red_   gry0   reverse
" Conditional        gren   none
" Exception          gren   none
" Keyword            gren   none
" Label              gren   none
" Operator           gren   none
" Repeat             gren   none
" Statement          gren   none
" Define             gren   none   bold
" Include            gren   none   bold
" Macro              gren   none   bold
" PreCondit          gren   none   bold
" PreProc            gren   none   bold
" DiffAdd            gren   gry0   reverse
" DiffAdded          gren   gry0   reverse
" Boolean            blue   none
" Character          blue   none
" Constant           blue   none
" Float              blue   none
" Number             blue   none
" String             blue   none
" Debug              blue   none   bold
" Delimiter          blue   none   bold
" Special            blue   none   bold
" SpecialChar        blue   none   bold
" SpecialComment     blue   none   bold
" SpecialKey         blue   none   bold
" Tag                blue   none   bold
" Todo               blue   none   bold
" SpellBad           blue   gry0   reverse
" SpellLocal         blue   gry0   reverse
" SpellCap           blue   gry0   reverse
" SpellRare          blue   gry0   reverse
" DiffChanged yllw gry0 reverse
" DiffText    yllw gry0 reverse
" MatchParen  yllw gry0 reverse
" Search      yllw gry0 reverse
