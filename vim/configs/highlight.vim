""""""""""""""""""""""""""""""" HIGHLIGHT """"""""""""""""""""""""""""""""""""""
"
" NOTE: use
" - :highlight to show all highlighting configs
" - :so $VIMRUNTIME/syntax/hitest.vim to see all the highlight groups
"

" This should not be needed:
"set t_Co=256

syntax on

" Colorscheme changelog:
" - distinguished
" - desert
" - PaperColor
" - minimalist
"colorscheme PaperColor
colorscheme PaperColor
filetype on
filetype plugin on "when a file is edited its plugin file is loaded
filetype plugin indent on    " required

" Normal - background color
"
" History:
" v1: Black: ctermbg=232
highlight Normal ctermbg=none

" This is e.g. for listchars
highlight NonText ctermfg=238 ctermbg=none

" Comments
" Use italic, and force no bg color
highlight Comment cterm=italic ctermbg=none

" CursorLine
"
" History:
" v2: ctermbg=234 cterm=none
" v1: cterm=underline gui=underline
" enable with :set cursorline
highlight CursorLine ctermbg=8 cterm=none

" Cursor colum number
" enable with :set cursorcolumn
highlight CursorColumn ctermbg=8 cterm=none

" Cursor line number
highlight CursorLineNr ctermbg=24 ctermfg=220 cterm=bold

" Tweak colors for list chars
highlight SpecialKey ctermfg=darkgrey

" 80 chars column marker
"
" History:
" v1: ctermbg=233
set colorcolumn=81
highlight ColorColumn ctermbg=235

" Colorize split bar
"highlight StatusLine  term=reverse cterm=bold ctermfg=231 ctermbg=31 gui=bold guifg=#ffffff guibg=#0087af guisp=Blue
"highlight StatusLineNC term=reverse ctermfg=231 ctermbg=238

"""""" Colorize custom text patterns by using matchadd
"
"" NOTE: **matchadd** only working in current window (i.e., no splits, etc...)
highlight LinesTooLong cterm=undercurl
call matchadd('LinesTooLong', '\%120v.*')

" Show trailing whitespace
highlight TrailingWhiteSpaces ctermbg=52
call matchadd('TrailingWhiteSpaces', '\s\+\%#\@<!$')

" Match multiple empty lines, empty line after { or empty line before }
"" History:
" v1: highlight MultiEmptyLines ctermbg=darkred ctermfg=yellow cterm=underline
highlight MultiEmptyLines ctermbg=none cterm=bold,strikethrough,underline ctermfg=196
call matchadd('MultiEmptyLines', '{\s*\n\s*\n\|^\s*\n\s*}\|^\s*\n\s*\n')

highlight SpellBad ctermfg=darkred ctermbg=None

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search highlight (NOTE: requires Alacritty overrides for proper coloring!)
"
" History:
" v1: ctermbg=143
" v2: ctermbg=144
highlight Search ctermfg=16 ctermbg=229 cterm=none
highlight IncSearch ctermfg=16 ctermbg=117 cterm=none

" This is the warning message shown when the search wraps
highlight WarningMsg ctermfg=yellow cterm=bold ctermbg=237

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive Gdiff
"
" DiffChange: a line that has changes
" DiffText: the text that actually changed in a line
" DiffAdd: an added line
" DiffDelete: the empty lines, complements DiffAdd
" Folded: The hunk marker
highlight DiffChange ctermbg=none
highlight DiffText ctermfg=yellow ctermbg=30 cterm=italic,bold
highlight DiffAdd ctermfg=252 ctermbg=22 cterm=bold
highlight DiffDelete ctermfg=232 ctermbg=232
highlight Folded ctermfg=11 ctermbg=236

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" markdown italic should be shown as italic
highlight markdownItalic cterm=italic
