""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" WARNING: coc.nvim test in progress
" CocList extensions:
" coc-terminal
" coc-marketplace
" \___ CocList marketplace
" coc-highlight
" coc-rls
" coc-python
" coc-json

" don't give |ins-completion-menu| messages.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>t <Plug>(coc-terminal-toggle)

" Need ccls
au FileType cpp nmap <silent> <C-]> <Plug>(coc-definition)
au FileType c nmap <silent> <C-]> <Plug>(coc-definition)
" Need coc-python
au FileType python nmap <silent> <C-]> <Plug>(coc-definition)
" Need coc-rls
au FileType rust nmap <silent> <C-]> <Plug>(coc-definition)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    """ echom "@@@@ do hover @@@@@"
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
" NOTE: requires :CocInstall coc-highlight
set updatetime=300
" History
"
" v1: ctermbg=18
hi CocHighlightText ctermbg=19
"autocmd CursorHold * call CocActionAsync('highlight')
autocmd CursorHold * call CocHiIfSmallFile()

function CocHiIfSmallFile()
  if line('$') < 5000
    "echom "coc-highlight now!"
    call CocActionAsync('highlight')
  else
    echom "coc-hihglight off, too many lines in file"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""