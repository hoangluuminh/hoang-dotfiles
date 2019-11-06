call plug#begin('~/.vim/plugged')

" PlugS LIST

" programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-sleuth'
"Plug 'ternjs/tern_for_vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
"Plug 'jackguo380/vim-lsp-cxx-highlight'

" stylize
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'terryma/vim-smooth-scroll'
Plug 'pseewald/vim-anyfold'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" features
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
"if has("gui_macvim")
  "Plug 'lyokha/vim-xkbswitch'
"endif
Plug 'qpkorr/vim-bufkill'
Plug 'liuchengxu/vista.vim'

" colors
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'flrnprz/plastic.vim'
Plug 'fatih/molokai'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'arcticicestudio/nord-vim'
Plug 'reedes/vim-colors-pencil'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'srcery-colors/srcery-vim'

" END OF PlugS LIST

call plug#end()
