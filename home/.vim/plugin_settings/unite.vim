call unite#filters#matcher_default#use(['matcher_fuzzy'])


let g:unite_source_grep_command='ag'
let g:unite_source_grep_default_opts='-i --nocolor --noheading --nobreak'
let g:unite_source_grep_recursive_opt=''


" United buffers
nnoremap <leader>ub :<C-u>Unite -auto-resize -start-insert buffer<CR>

" United files
nnoremap <leader>uf :<C-u>Unite -start-insert -winheight=10 file_rec/async<CR>

" United grep
nnoremap <leader>ug :<C-u>Unite grep:.<CR>

" United help
nnoremap <leader>uh :<C-u>Unite -start-insert -winheight=10 help<CR>

" United bookmarks
nnoremap <leader>uk :<C-u>Unite
	\-auto-resize -default-action=vimfiler bookmark<CR>
