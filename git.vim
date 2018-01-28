"spell check when writing commit logs
autocmd filetype svn,*commit* set spell


" Disable git gutter by default
let g:gitgutter_enabled = 1

" Git bindings
map <Leader>gs :Gstatus<CR>
map <Leader>gc :Gcommit<CR>
map <Leader>gd :Gdiff<CR>
map <Leader>gb :Gblame<CR>

" Open current line on GitHub
map <Leader>gh :.Gbrowse<CR>
vmap <Leader>gh :Gbrowse<CR>

" Open git log
nmap <Leader>gl :GV<CR>
nmap <Leader>gL :GV!<CR>
