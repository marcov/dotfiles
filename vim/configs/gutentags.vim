"""""" vim-gutentags
function! GutentagsFilter(path) abort
    if fnamemodify(a:path, ':e') == 'cpp'
      " Using coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'hpp'
      " Using coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'c'
      " Using coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'h'
      " Using coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'python'
      " Using coc-nvim
      return 0
    elseif fnamemodify(a:path, ':e') == 'sh'
      return 1
    endif

    return 0
endfunction
let g:gutentags_enabled_user_func = 'GutentagsFilter'
let g:gutentags_ctags_tagfile = '.tags'
