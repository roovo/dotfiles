" Vim color file

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" and to see the current highlight settings, type :hi

" -------------------------------------------------------

" Based on
runtime colors/desert.vim

" Named
let g:colors_name = "rupert"

" kill the bright orange on my laptop
hi Constant guifg=red ctermfg=1
hi ModeMsg guifg=red ctermfg=1

" Make the current line look better
if version >= 700 " Vim 7.x specific colors
  hi CursorLine     guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
  hi CursorColumn   guifg=NONE        guibg=#121212     gui=NONE      ctermfg=NONE        ctermbg=NONE        cterm=BOLD
endif

" Make the visual selection visible
hi Visual           guifg=NONE        guibg=#262D51     gui=NONE      ctermfg=NONE        ctermbg=darkgray    cterm=NONE

" Make matching param highlight more visible
hi MatchParen term=reverse ctermbg=0 guibg=lightgray

" Make searches more visible
hi IncSearch  ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi Search     ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
