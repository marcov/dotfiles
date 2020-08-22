 nnoremap  <C-l> :CtrlPMRUFiles<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|o|a|P)$',
  \ }
