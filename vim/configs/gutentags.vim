"
" vim-gutentags
"
function! GutentagsFilter(path) abort
    if fnamemodify(a:path, ':e') == 'cpp' || fnamemodify(a:path, ':e') == 'hpp' || fnamemodify(a:path, ':e') == 'c' || fnamemodify(a:path, ':e') == 'h'
      " coc-nvim for c/c++
      return 1
    elseif fnamemodify(a:path, ':e') == 'python'
      " coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'sh'
      return 1
    endif

    return 0
endfunction

let g:gutentags_enabled_user_func = 'GutentagsFilter'
let g:gutentags_ctags_tagfile = '.tags'
