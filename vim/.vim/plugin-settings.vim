" colors
  colorscheme nord
  if exists('+termguicolors')
    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
  endif
  if has("gui_running")
  else
    hi! Normal ctermbg=NONE guibg=NONE
    hi! SignColumn ctermbg=NONE guibg=NONE
    hi! LineNr ctermbg=NONE guibg=NONE
    hi! ALESignColumnWithoutErrors ctermbg=NONE guibg=NONE
    "hi! GitGutterAdd    ctermfg=2 guifg=#009900 ctermbg=NONE guibg=NONE
    "hi! GitGutterChange ctermfg=3 guifg=#bbbb00 ctermbg=NONE guibg=NONE
    "hi! GitGutterDelete ctermfg=1 guifg=#ff2222 ctermbg=NONE guibg=NONE
    "hi! GitGutterChangeDelete ctermfg=3 guifg=#bbbb00 ctermbg=NONE guibg=NONE
    "hi! Directory ctermfg=204 guifg=#F08080
    "hi Visual ctermfg=15 ctermbg=240
    "hi LineNr ctermfg=240 guifg=#808080
    "hi Comment guifg=#808080
    "hi CursorLine guibg=#808080 guifg=#FFFAFA
  endif

" COC CONFIGS (Custom)
  let g:coc_global_extensions=['coc-emmet', 'coc-eslint', 'coc-css', 'coc-html', 'coc-json', 'coc-tslint-plugin', 'coc-tsserver', 'coc-omnisharp']
" COC CONFIGS (Recommended)
  " if hidden is not set, TextEdit might fail.
  set hidden

  " Some servers have issues with backup files, see #649
  set nobackup
  set nowritebackup

  " Better display for messages
  "set cmdheight=2

  " You will have bad experience for diagnostic messages when it's default 4000.
  set updatetime=300

  " don't give |ins-completion-menu| messages.
  set shortmess+=c

  " always show signcolumns
  set signcolumn=yes

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

  " Use `[c` and `]c` to navigate diagnostics
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
    else
    call CocAction('doHover')
    endif
  endfunction

  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')

  " Remap for rename current word
  nmap <leader>rn <Plug>(coc-rename)

  " Remap for format selected region
  xmap <leader>f  <Plug>(coc-format-selected)
  nmap <leader>f  <Plug>(coc-format-selected)

  augroup mygroup
    autocmd!
    " Setup formatexpr specified filetype(s).
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    " Update signature help on jump placeholder
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

  " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)

  " Remap for do codeAction of current line
  nmap <leader>ac  <Plug>(coc-codeaction)
  " Fix autofix problem of current line
  nmap <leader>qf  <Plug>(coc-fix-current)

  " Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
  nmap <silent> <TAB> <Plug>(coc-range-select)
  xmap <silent> <TAB> <Plug>(coc-range-select)
  xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

  " Use `:Format` to format current buffer
  command! -nargs=0 Format :call CocAction('format')

  " Use `:Fold` to fold current buffer
  command! -nargs=? Fold :call     CocAction('fold', <f-args>)

  " use `:OR` for organize import of current buffer
  command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

  "" Add status line support, for integration with other plugin, checkout `:h coc-status`
  "set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

  " Using CocList
  " Show all diagnostics
  nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
  " Manage extensions
  nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
  " Show commands
  nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
  " Find symbol of current document
  nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
  " Search workspace symbols
  nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
  " Do default action for next item.
  nnoremap <silent> <space>j  :<C-u>CocNext<CR>
  " Do default action for previous item.
  nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
  " Resume latest coc list
  nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
  let g:airline#extensions#coc#enabled = 1

" Ale CONFIGS
  " let g:ale_linters = {'c': []}
  " let g:ale_linters = {'cpp': []}
  " let g:ale_linters = {
  " \   'javascript': ['eslint', 'standard'],
  " \}
  " let g:ale_fixers = {'javascript': ['prettier', 'eslint', 'standard']}
  " let g:ale_fix_on_save = 1
  " let g:ale_lint_on_save = 1
  " let g:ale_lint_on_text_changed = 'never'
  " let g:ale_lint_on_insert_leave = 0
  " let g:ale_sign_error = ''
  " let g:ale_sign_warning = ''

" NERD Commenter CONFIGS
  let g:NERDSpaceDelims = 1

" NERDTree CONFIGS
  "autocmd FileType nerdtree setlocal nolist
  let NERDTreeMinimalUI=1
  "let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.pyc', '\.o', '\.obj', '\.svn', '\.swp', '\.class', '\.hg', '\.DS_Store']
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeCascadeSingleChildDir = 0

" Prettier CONFIGS
  "let g:prettier#config#use_tabs = 'true'

" vim-polyglot CONFIGS
  let g:vim_json_syntax_conceal = 0 
  let g:vim_markdown_conceal = 0
  let g:vim_markdown_conceal_code_blocks = 0

" vim-airline CONFIGS
  "if has("gui_running")
    let g:airline_powerline_fonts = 1
  "endif
  "let g:airline_theme = 'powerlineish'
  "let g:airline_theme = 'one'
  let g:airline_theme = 'nord'

  "let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#/%L%#__restore__# :%#__accent_bold#%3v '
  let g:airline_section_z = '%L%{g:airline_symbols.maxlinenr} %#__accent_bold#%{g:airline_right_alt_sep} %3l%#__restore__#:%2v'
  let g:airline#extensions#xkblayout#short_codes = {'VietnameseSimpleTelex': 'VI', 'ABC': 'EN'}
  let g:airline#extensions#branch#enabled = 1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'

" fzf CONFIGS
  " Reverse the layout to make the FZF list top-down
  let $FZF_DEFAULT_OPTS='--layout=reverse'

  " Using the custom window creation function
  let g:fzf_layout = { 'window': 'call FloatingFZF()' }

  " Function to create the custom floating window
  function! FloatingFZF()
    " creates a scratch, unlisted, new, empty, unnamed buffer
    " to be used in the floating window
    let buf = nvim_create_buf(v:false, v:true)

    " 25% of the height
    let height = float2nr(&lines * 0.25)
    " 60% of the width
    let width = float2nr(&columns * 0.6)
    " horizontal position (centralized)
    let horizontal = float2nr((&columns - width) / 2)
    " vertical position (one line down of the top)
    let vertical = 1

    let opts = {
          \ 'relative': 'editor',
          \ 'row': vertical,
          \ 'col': horizontal,
          \ 'width': width,
          \ 'height': height
          \ }

    " open the new window, floating, and enter to it
    call nvim_open_win(buf, v:true, opts)
  endfunction

" auto-pairs CONFIGS
  let g:AutoPairsShortcutBackInsert=''

" vim-xkbswitch CONFIGS
  "if has("gui_macvim")
    "let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'
  "endif

" indentLine CONFIGS
  let g:indentLine_char = '┊'

" devicons CONFIGS
  let g:webdevicons_enable_nerdtree = 1
  let g:NERDTreeHighlightFolders = 1
  let g:NERDTreeHighlightFoldersFullName = 1
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " enable folder glyph flag
  let g:DevIconsEnableFoldersOpenClose = 0
  let g:DevIconsEnableFolderExtensionPatternMatching = 1
  let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
  let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
  let g:DevIconsDefaultFolderOpenSymbol = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cs'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {}
  let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.test.js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols['.*\.csproj'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['node_modules'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['src'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['bin'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['docs'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['repositories'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['controllers'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['entities'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['models'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['interfaces'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['services'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['helpers'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['public'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['app'] = 'גּ'
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['configs'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['components'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['containers'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['hocs'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['pages'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['assets'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['store'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['reducers'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['shared'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['middlewares'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['routes'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['utils'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['styles'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['hooks'] = 'ﯠ'
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['package-lock.json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['package.json'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.gitignore'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.vs'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.vscode'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['.git'] = ''
  if exists("g:loaded_webdevicons")
    call webdevicons#refresh() 
  endif

" vista CONFIGS
  let g:vista_default_executive = 'coc'
  let g:vista_fzf_preview = ['right:50%']
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
  let g:vista_echo_cursor_strategy = 'floating_win'
  let g:vista#renderer#enable_icon = 1
  nmap <Leader>v :Vista!!<CR>

" vim-quickui CONFIGS
  let g:quickui_border_style = 2
  " clear all the menus
  call quickui#menu#reset()

  " install a 'File' menu, use [text, command] to represent an item.
  call quickui#menu#install('File', [
              \ [ "New\t:enew", 'enew' ],
              \ [ "Open\t:Files", 'Files' ],
              \ [ "Close\t:bd", 'bd' ],
              \ [ "--", '' ],
              \ [ "Save\t:w", 'w'],
              \ [ "Save All\t:wa", 'wa' ],
              \ [ "--", '' ],
              \ [ "Exit\t:qa", 'qa' ],
              \ ])

  " items containing tips, tips will display in the cmdline
  call quickui#menu#install('Edit', [
              \ [ "Copy", "call quickui#textbox#open('Copy by switching to Visual Mode (V), highlight text then press (y)', {'close':'button', 'title':'Copy'})", 'Copy dialog' ],
              \ [ "Paste\t p", 'execute "normal! \p"'],
              \ [ "Paste Above\t P", 'execute "normal! \P"'],
              \ ])

  call quickui#menu#install('Find', [
              \ [ "Find (This file)\t:BLines", 'BLines', 'Find in this file' ],
              \ [ "Find (This file)\t:BLines", 'BLines', 'Find in this file' ],
              \ [ "Find (Buffers)\t:Lines", 'Lines', 'Find in open buffers' ],
              \ [ "Find (Project)\t:Rg", 'Rg', 'Find in working directory using Rg' ],
              \ ])

  call quickui#menu#install('Go', [
              \ [ "Buffers\t:Buffers", 'Buffers', 'Show list of opened files' ],
              \ [ "Terminal\t:term", 'terminal' ],
              \ [ "Explorer\tדּ n", 'NERDTreeToggle' ],
              \ ])

  call quickui#menu#install('Window', [
              \ [ "Split Vertically\tדּ w v", '' ],
              \ [ "Split Horizontally\tדּ w s", '' ],
              \ [ "Equally Resize All\tדּ w =", '' ],
              \ [ "--", '' ],
              \ [ "Close Window\tדּ w q", '' ],
              \ ])

  " script inside %{...} will be evaluated and expanded in the string
  call quickui#menu#install("Option", [
        \ ['%{&wrap? "  ":" "} Line Wrap', 'set wrap!'],
        \ ['%{&number? "  ":" "} Show Line Number', 'set spell!'],
        \ ['%{&cursorline? "  ":" "} Show Cursor Line', 'set cursorline!'],
        \ ['%{&spell? "  ":" "} Spellcheck', 'set spell!'],
        \ ['%{&paste? "  ":" "} Formatted Pasting', 'set paste!'],
        \ ])

  " register HELP menu with weight 10000
  call quickui#menu#install('Help', [
        \ ["Cheatsheet", 'help index', ''],
        \ ['Tips', 'help tips', ''],
        \ ['--',''],
        \ ["Tutorial", 'help tutor', ''],
        \ ['Quick Reference', 'help quickref', ''],
        \ ['Summary', 'help summary', ''],
        \ ], 10000)

  " enable to display tips in the cmdline
  let g:quickui_show_tip = 1

  " hit space twice to open menu
  noremap <space><space> :call quickui#menu#open()<cr>

" (UNUSED) YouCompleteMe CONFIGS
  "let g:ycm_autoclose_preview_window_after_insertion = 1
  "" enhance YCM JS completion with tern's smarts
  "autocmd FileType javascript setlocal omnifunc=tern#Complete


