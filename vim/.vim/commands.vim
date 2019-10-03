" Smooth Scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
" AnyFold
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" indentLine
autocmd FileType help,nerdtree IndentLinesDisable "Fix NERDTree indenting
" Buffer and NERDTree conflict fixes
nnoremap <silent> <leader>qq :bp<cr>:bd! #<cr>
