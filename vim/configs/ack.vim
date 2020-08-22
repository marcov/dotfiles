"""""""""" ack.vim options
cnoreabbrev Ack Ack!
nnoremap <Leader>f :Ack!<Space>

let g:ackprg = "ag"
let g:ack_default_options = " --case-sensitive --noheading --nopager --nocolor --nogroup --column --ignore .tags --hidden --ignore-dir .git"
let g:ackhighlight = 1
let g:ack_autoclose = 1
"let g:ack_autofold_results = 1
