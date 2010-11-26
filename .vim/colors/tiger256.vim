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

" 121 is a nice green for text on black bg... dunno where to use it.

"hi Normal		ctermfg=250	 ctermbg=16
hi Normal		ctermfg=250	 ctermbg=233
"hi ErrorMsg		ctermfg=15	 ctermbg=105
hi ErrorMsg		ctermfg=15	 ctermbg=105
"hi Visual		ctermfg=33	 ctermbg=fg		cterm=reverse
"hi VisualNOS	ctermfg=33	 ctermbg=fg		cterm=reverse,underline
hi Visual		ctermfg=18	 ctermbg=fg		cterm=reverse
hi VisualNOS	ctermfg=18	 ctermbg=fg		cterm=reverse,underline
hi Todo			ctermfg=235	 ctermbg=26	
hi Search		ctermfg=14	 ctermbg=26	
hi IncSearch	ctermfg=14	 ctermbg=26	

hi SpecialKey		ctermfg=14
hi Directory		ctermfg=14
hi Title			ctermfg=13	 cterm=none 
hi WarningMsg		ctermfg=9
hi WildMenu			ctermfg=11	 ctermbg=0	 cterm=none term=none
hi ModeMsg			ctermfg=44	
hi MoreMsg			ctermfg=darkgreen	ctermfg=darkgreen
hi Question			ctermfg=10	 cterm=none
hi NonText			ctermfg=27	

hi StatusLine		ctermfg=21	 ctermbg=248	 cterm=none	
hi StatusLineNC		ctermfg=0	 ctermbg=248	 cterm=none	
hi VertSplit		ctermfg=0	 ctermbg=248	 cterm=none	

hi Folded			ctermfg=30	 ctermbg=233	
hi FoldColumn		ctermfg=30	 ctermbg=233	
hi LineNr			ctermfg=10

hi DiffAdd          ctermbg=18
hi DiffChange       ctermbg=126	 ctermfg=15	 
hi DiffDelete       cterm=bold ctermfg=21	 ctermbg=30	
hi DiffText         ctermfg=15	 cterm=bold ctermbg=9	

hi Cursor			ctermfg=233	 ctermbg=215
hi lCursor			ctermfg=15	 ctermbg=0


hi Comment			ctermfg=39
hi Constant			ctermfg=217
hi Special			ctermfg=214	 cterm=none
hi Identifier		ctermfg=14
hi Statement		ctermfg=227	 cterm=none
hi PreProc			ctermfg=213	 cterm=none
hi type				ctermfg=47	 cterm=none
hi Underlined		cterm=underline term=underline
hi Ignore			ctermfg=fg ctermfg=bg

hi SpellBad         term=reverse ctermfg=fg ctermbg=red
"hi SpellCap         term=reverse ctermbg=blue
hi SpellCap         term=reverse ctermfg=fg ctermbg=darkgrey
hi SpellRare        term=reverse ctermfg=fg ctermbg=magenta
hi SpellLocal       term=reverse,bold ctermfg=fg ctermbg=red
"hi SpellLocal       term=underline ctermfg=black ctermbg=cyan

hi MatchParen       term=none ctermfg=lightgrey ctermbg=brown


