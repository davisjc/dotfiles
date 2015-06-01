" Name:     Aurora vim colorscheme
" Author:   Henry Baba-Weiss <henry.babaweiss@gmail.com>

" 'Aurora' is my custom vim color scheme, modeled closely after the Solarized
" Dark color scheme. It was designed using Solarized Dark as a base starting
" point, but it diverges according to the following design principles:
"
"  o Compatibility/consistency between gvim and terminal vim.
"    Solarized doesn't tend to work so well using xterm 256 colors, possibly
"    because its color choice is so specialized. Initially, my custom color
"    scheme (that would eventually turn into Aurora) was an attempt to mimic
"    Solarized, but with the constraint of only using xterm colors. As much as
"    possible, I've strived to keep the 24-bit gvim colors identical, or at
"    least very similar, to the color choices used for the terminal color scheme.
"
"  o Emphasis on higher contrast color groupings.
"    My biggest complaint with Solarized Dark is that, when editing code, the
"    color choice makes various syntax elements blend together too much. The
"    most notable example is the color of comments: a dark gray that makes them
"    very easy to gloss over when scanning through code.
"
"    Aurora, on the other hand, emphasizes contrast between major syntactical
"    elements, e.g. comments, identifiers, and keywords. This makes it much
"    easier to recognize and visually group together syntactical features while
"    scanning through code.
"
"  o Harmonious color choices.
"    While I do not profess to know much about formal color theory, I chose
"    these particular colors in an attempt to keep them 'harmonious' with each
"    other. By that, I mean that this color scheme is heavily centered around
"    blue/green tones, accented by light grays and dark turquoises. There was no
"    formal process or method to my selection; I simply hand-tweaked until I
"    found the colors aesthetically pleasing and, to my eye, balanced.
"
" NOTE: To have the terminal colorscheme work properly, you may need to add the
" following to your .vimrc:
"
"   set t_ut=
"   set t_Co=256
"

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="aurora"

" -----------------------------------------------------------------------------
" Basic syntax highlighting
" -----------------------------------------------------------------------------

" Solarized fg/bg
hi Normal       guifg=#bcbcbc guibg=#002b36

" There isn't a good X11 color name for this, and the xterm color name is stupid
" ("DarkSlateGray2"), so I'm just gonna call this 'bright cyan'.
hi Comment      ctermfg=87    guifg=#55ffff
hi! link Identifier Comment

hi Statement    ctermfg=83    guifg=SeaGreen2
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Structure Statement

hi PreProc      ctermfg=111   guifg=SkyBlue2
hi! link Include PreProc

hi Type         term=NONE     cterm=NONE
hi Type         ctermfg=121   guifg=PaleGreen1

hi Function     ctermfg=39    guifg=DeepSkyBlue1
hi Operator     ctermfg=76    guifg=Chartreuse2

hi Constant     ctermfg=44    guifg=LightSeaGreen
hi! link String Constant
hi! link Character Constant
hi! link Boolean Constant
hi! link Number Constant
hi! link Float Constant
hi! link Special Constant

hi Todo         ctermfg=196   guifg=Red1
hi Todo         ctermbg=227   guibg=LightGoldenrod1

" -----------------------------------------------------------------------------
" UI highlighting
" -----------------------------------------------------------------------------

" Anything outside of the main text area (e.g. those '~' lines in an empty file)
hi NonText      ctermfg=250   guifg=Grey74

" For some reason 'DeepSkyBlue4' can mean 3 different colors...
hi Visual       ctermfg=NONE  guifg=NONE
hi Visual       ctermbg=23    guibg=#005f5f
hi! link MatchParen Visual

" Supposedly this is Visual for when 'not owning selection'... vOv
hi! link VisualNOS Visual

" Line numbering
hi CursorLineNr term=bold     gui=bold
hi CursorLineNr ctermfg=186   guifg=LightGoldenrod2
hi LineNr       ctermfg=241   guifg=Grey39

" No underline (defaults to underline in terminal mode)
hi CursorLine   term=NONE     cterm=NONE
hi CursorLine   ctermbg=236   guibg=Grey19

" Column guide
hi ColorColumn  ctermbg=36    guibg=DarkCyan

hi StatusLine   term=bold     cterm=bold      gui=bold
hi StatusLine   ctermfg=16    guifg=Grey0
hi StatusLine   ctermbg=36    guibg=DarkCyan

hi Search       ctermfg=16    guifg=Grey0
hi Search       ctermbg=51    guibg=Cyan1

hi Error        ctermfg=196   guifg=Red1
hi Error        ctermbg=16    guibg=Grey0

" Menu colors (including wild menus)
" Colors got weird for this one, so I had to make the GUI and terminal colors differ :(
hi Pmenu        ctermfg=18    guifg=#002b36
hi Pmenu        ctermbg=102   guibg=#839496
hi PmenuSel     ctermfg=231   guifg=Grey100
hi PmenuSel     ctermbg=241   guibg=Grey39
hi! link WildMenu Pmenu

" Various UI colors
hi! link SpecialKey Comment
hi! link Directory Comment
hi! link Question Comment
hi! link ModeMsg Comment
hi! link MoreMsg Comment

" Pops up in ctags/cscope searches
hi Title        ctermfg=166   guifg=DarkOrange3

hi VertSplit    term=NONE     cterm=NONE
hi VertSplit    ctermfg=102   guifg=Grey53
hi VertSplit    ctermbg=102   guibg=Grey53

hi Folded       ctermfg=250   guifg=Grey74
hi Folded       ctermbg=237   guibg=Grey23

hi DiffAdd      term=bold     cterm=bold
hi DiffAdd      ctermbg=22    guibg=#005f00

" Make the deleted portions solid pale red (i.e. block out the dashed lines)
hi DiffDelete   term=bold     cterm=bold
hi DiffDelete   ctermfg=95    guifg=#875f5f
hi DiffDelete   ctermbg=95    guibg=#875f5f

" DiffChange/DiffText refer to lines that have been modified, compared to lines
" that have been wholly added or removed. In this case, what I've done is only
" highlight the portions of text that changed (i.e. DiffText). Thus,
" DiffChange,
" i.e.  the lines containing these changed portions of text, has no
" highlight.
hi DiffChange   term=NONE     cterm=NONE
hi DiffChange   ctermbg=NONE  guibg=NONE
hi DiffText     term=NONE     cterm=bold
hi DiffText     ctermbg=23    guibg=#005f5f

" -----------------------------------------------------------------------------
" Vim syntax highlighting
" -----------------------------------------------------------------------------

hi! link vimCommand Statement
hi! link vimVar Identifier
hi! link vimGroup Type
hi! link vimHiGroup Type
hi! link vimHiLink Type
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
