"Start of Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS LIST

"Plugin 'w0rp/ale'
"Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer --clang-completer --cs-completer' }
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'scrooloose/nerdtree'
"Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
"Plugin 'digitaltoad/vim-pug'
Plugin 'tpope/vim-unimpaired'
Plugin 'ternjs/tern_for_vim'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
"Plugin 'mxw/vim-jsx'
Plugin 'sheerun/vim-polyglot'
Plugin 'qpkorr/vim-bufkill'
Plugin 'ryanoasis/vim-devicons'
Plugin 'pseewald/vim-anyfold'
Plugin 'Yggdroot/indentLine'
Plugin 'machakann/vim-highlightedyank'

" Color Scheme
Plugin 'dracula/vim'
Plugin 'rakr/vim-one'
Plugin 'flrnprz/plastic.vim'
Plugin 'fatih/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'challenger-deep-theme/vim', { 'name': 'challenger-deep' }

" END OF PLUGINS LIST

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set encoding=UTF-8
set number
set ruler
set nowrap
set splitbelow
set termwinsize=10x0
syntax enable
"colorscheme monokai
set background=dark
colorscheme gruvbox
"colorscheme challenger_deep
":set guifont=Meslo\ LG\ M\ for\ Powerline:h14
"set macligatures
set guifont=Iosevka\ Nerd\ Font:h14

set hlsearch
set ignorecase
set clipboard=unnamed
set foldmethod=expr
set laststatus=2
set noshowmode
"filetype plugin on
set showcmd
set nolist
set autoindent

" Smooth Scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Indent marks
set list listchars=trail:·
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cindent
"
"set tabstop=4
"set shiftwidth=4
"set list listchars=tab:┊\ ,trail:·
"highlight SpecialKey ctermfg=8

" Anyfold
autocmd Filetype * AnyFoldActivate               " activate for all filetypes
set foldlevel=0  " close all folds

" Indent-Guide
autocmd FileType help,nerdtree IndentLinesDisable
let g:indentLine_char = '┊'

" Buffer and NERDTree conflict fixes
nnoremap <silent> <leader>qq :bp<cr>:bd #<cr>

" COC
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
let g:airline#extensions#coc#enabled = 1

" NERDTree CONFIGS
  map <C-n> :NERDTreeToggle<CR>
  "autocmd FileType nerdtree setlocal nolist
  let NERDTreeMinimalUI=1
  let NERDTreeShowHidden=1
  let NERDTreeIgnore=['\.pyc', '\.o', '\.obj', '\.svn', '\.swp', '\.class', '\.hg', '\.DS_Store']


" Prettier
"let g:prettier#config#use_tabs = 'true'

"" YouCompleteMe CONFIGS
"let g:ycm_autoclose_preview_window_after_insertion = 1

"" enhance YCM JS completion with tern's smarts
"autocmd FileType javascript setlocal omnifunc=tern#Complete

" Ale CONFIGS
  "let g:ale_cs_mcsc_assemblies = [
    "\ '/Applications/Unity/Unity.app/Contents/Frameworks/Managed/UnityEngine.dll',
    ""\ 'path-to-unityproject/obj/Debug',
    ""\ '/Users/owner/Documents/Game Development/Projects/project-bathunter/obj/Debug'
    ""\ '/Users/owner/Documents/Game Development/Projects/project-earthlings/obj/Debug'
    "\]
  "let g:ale_sign_error = '✕ '
  "let g:ale_sign_warning = '△ '

" vim-airline CONFIGS
  if has("gui_running")
    let g:airline_powerline_fonts = 1
  endif
  "let g:airline_theme = 'powerlineish'
  let g:airline_theme = 'one'

  "let g:airline_section_z = '%3p%% %#__accent_bold#%4l%#__restore__#/%L%#__restore__# :%#__accent_bold#%3v '
  let g:airline_section_z = '%L%{g:airline_symbols.maxlinenr} %#__accent_bold#%{g:airline_right_alt_sep} %3l%#__restore__#:%2v'
  let g:airline#extensions#xkblayout#short_codes = {'VietnameseSimpleTelex': 'VI', 'ABC': 'EN'}
  let g:airline#extensions#branch#enabled = 1
  let g:airline#extensions#tabline#enabled = 1

" vim-xkbswitch CONFIGS
let g:XkbSwitchLib = '/usr/local/lib/libInputSourceSwitcher.dylib'

" devicons CONFIGS
  let g:webdevicons_enable_nerdtree = 1
  let g:NERDTreeHighlightFolders = 1
  let g:NERDTreeHighlightFoldersFullName = 1
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1 " enable folder glyph flag
  let g:DevIconsEnableFoldersOpenClose = 1
  let g:DevIconsEnableFolderExtensionPatternMatching = 1
  let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
  let g:WebDevIconsNerdTreeBeforeGlyphPadding = ' '
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
  if exists("g:loaded_webdevicons")
    call webdevicons#refresh() 
  endif

