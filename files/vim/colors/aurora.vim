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

" The base palette is inspired by the Solarized Dark color scheme. We use it as
" a starting point to build the other colors.
hi Normal       guifg=#bcbcbc guibg=#002b36

" Operators and delimeters occur frequently in code, so having them stand out
" too much can add a lot of gratuitous, obnoxious visual noise. Instead, I want
" them to appear pretty close to normal text, but just slightly different enough
" to tell them apart from normal text.
hi Operator     ctermfg=110   guifg=#87afdf
hi! link Delimiter Operator

" Constants, especially string literals, can take up a lot of screen real
" real estate, so I don't want these to be too noisy either. However, they occur
" infrequently enough and are semantically different enough from symbols that I
" want them to be easily distinguishable when scanning code. Thus, they're a
" lighter sea green that's similar, in hue, to the dark sea green background.
hi Constant     ctermfg=44    guifg=LightSeaGreen
hi! link String Constant
hi! link Character Constant
hi! link Boolean Constant
hi! link Number Constant
hi! link Float Constant
hi! link Special Constant

" Functions are the fundamental tool for abstracting logic and control flow:
" function names and their usages are often the most distinguishable clues for
" figuring out the logic and intent of code. I chose this blue frankly because
" I find it aesthetically pleasing: it's a bold, deep blue, but not too dark to
" get lost in the dark sea green background. I like looking at it, which is
" important for a syntax element that I wind up looking at a lot.
hi Function     ctermfg=39    guifg=DeepSkyBlue1
hi! link Identifier Function
hi! link Tag Function

" Preprocessor directives are often used as a way to 'break out' of a language's
" conventional syntax constructs, and as such, can have unusual semantics. Thus,
" I chose to highlight preprocessor directives with a light purple: while still
" in the general theme of 'aurora' colors, it stands out from the other colors
" and has no equal in this color scheme.
hi PreProc      ctermfg=111   guifg=#87afff
hi! link Include PreProc
hi! link Debug PreProc

" Keywords generally indictate control flow or some sort of built-in action.
" They are conceptually not too different from functions, and thus are similar
" in color intensity to Function and PreProc. However, since keywords are built-
" in, rather than user-definable, they are of a more greenish hue to subtly
" associate them with the color of built-in types.
hi Keyword      ctermfg=106   guifg=#87af00
hi! link Statement Keyword
hi! link Conditional Keyword
hi! link Repeat Keyword
hi! link Label Keyword
hi! link Structure Keyword

" Types indicate the characteristics and shape of the data that code operates
" with. Thus, to contrast with the darker colors used to mark control flow, I
" used a lighter green to mark this as something of an 'annotation'.
hi Type         ctermfg=119   guifg=#87ff5f

" In a similar vein to type highlighting, comments are another form of
" annotation (except more free-form and not checked by the compiler), and thus
" get a lighter, pale blue to complement the type color.
hi Comment      ctermfg=87    guifg=#55ffff

" Customarily, vim colorschemes seem to make TODO markers loud and noisy, using
" some sort of bright background and text. As they say, when in Rome...
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
" highlight the portions of text that changed (i.e. DiffText). Thus, DiffChange,
" i.e. the lines containing these changed portions of text, has no highlight.
hi DiffChange   term=NONE     cterm=NONE
hi DiffChange   ctermbg=NONE  guibg=NONE
hi DiffText     term=NONE     cterm=bold
hi DiffText     ctermbg=23    guibg=#005f5f

" Less noisy versions of add/remove diff highlighting for things like git logs
hi diffAdded    ctermfg=40    guifg=#00df00
hi diffRemoved  ctermfg=160   guifg=#df0000

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
