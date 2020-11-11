" context.vim
let g:context_enabled = 0
let g:context_presenter = 'nvim-float'
let g:context_nvim_no_redraw = 1

" NOTE: read README for the following mapping opt
let g:context_add_mappings = 0

"Auto commands needed for ContextActivate
"let g:context_add_autocmds = 0

" Use zz to have the context showing until a line is moved
" Or, use :ContextPeek without this mapping
" If you plan to use normal `zz` mapping, them map with `zz: call context#...`
nnoremap <silent> zz       :call context#peek()<CR>
