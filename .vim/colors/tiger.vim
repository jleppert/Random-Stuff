" Vim color file
" Maintainer:	Josh Miller <unrtst@cpan.org>
" Last Change:	2006 Sep 28

" tiger -- based on darkblue, with updates for vim70
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark
hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "tiger"

hi Normal		guifg=#c0c0c0 guibg=#000040						ctermfg=white ctermbg=black
"hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=yellow ctermbg=darkred cterm=bold
hi ErrorMsg		guifg=#ffffff guibg=#287eff						ctermfg=white ctermbg=blue cterm=bold
hi Visual		guifg=#8080ff guibg=fg		gui=reverse				ctermfg=darkblue ctermbg=fg cterm=reverse
hi VisualNOS	guifg=#8080ff guibg=fg		gui=reverse,underline	ctermfg=darkblue ctermbg=fg cterm=reverse,underline
hi Todo			guifg=#d14a14 guibg=#1248d1						ctermfg=red	ctermbg=darkblue
hi Search		guifg=#90fff0 guibg=#2050d0						ctermfg=white ctermbg=darkblue cterm=underline term=underline
hi IncSearch	guifg=#b0ffff guibg=#2050d0							ctermfg=darkblue ctermbg=gray

hi SpecialKey		guifg=cyan			ctermfg=darkcyan
hi Directory		guifg=cyan			ctermfg=cyan
hi Title			guifg=magenta gui=none ctermfg=magenta cterm=bold
hi WarningMsg		guifg=red			ctermfg=red
hi WildMenu			guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg			guifg=#22cce2		ctermfg=lightblue
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			guifg=green gui=none ctermfg=green cterm=none
hi NonText			guifg=#0030ff		ctermfg=darkblue

hi StatusLine		guifg=blue guibg=darkgray gui=none		ctermfg=darkblue ctermbg=gray term=none cterm=none
hi StatusLineNC		guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none
hi VertSplit		guifg=black guibg=darkgray gui=none		ctermfg=black ctermbg=gray term=none cterm=none

hi Folded			guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn		guifg=#808080 guibg=#000040			ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr			guifg=#90f020			ctermfg=green cterm=none

hi DiffAdd          guibg=darkblue  ctermbg=darkblue term=none cterm=none
hi DiffChange       guibg=darkmagenta ctermbg=magenta guifg=#ffffff ctermfg=white cterm=none
hi DiffDelete       ctermfg=darkblue ctermbg=cyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText         cterm=bold guifg=#ffffff ctermfg=white ctermbg=red gui=bold guibg=Red

hi Cursor			guifg=#000020 guibg=#ffaf38 ctermfg=bg ctermbg=brown
hi lCursor			guifg=#ffffff guibg=#000000 ctermfg=bg ctermbg=darkgreen


hi Comment			guifg=#80a0ff ctermfg=darkred
hi Constant			ctermfg=magenta guifg=#ffa0a0 cterm=none
hi Special			ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier		ctermfg=cyan guifg=#40ffff cterm=none
hi Statement		ctermfg=yellow cterm=none guifg=#ffff60 gui=none
hi PreProc			ctermfg=magenta guifg=#ff80ff gui=none cterm=none
hi type				ctermfg=green guifg=#60ff60 gui=none cterm=none
hi Underlined		cterm=underline term=underline
hi Ignore			guifg=bg ctermfg=bg
" This man. went to the park
hi SpellBad         term=reverse ctermfg=fg ctermbg=red
"hi SpellCap         term=reverse ctermbg=blue
hi SpellCap         term=reverse ctermfg=fg ctermbg=darkgrey
hi SpellRare        term=reverse ctermfg=fg ctermbg=magenta
hi SpellLocal       term=reverse,bold ctermfg=fg ctermbg=red
"hi SpellLocal       term=underline ctermfg=black ctermbg=cyan

hi MatchParen       term=none ctermfg=lightgrey ctermbg=brown


