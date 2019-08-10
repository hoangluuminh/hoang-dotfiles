call plug#begin('~/.vim/plugged')

" PlugS LIST

" programming
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-unimpaired'
Plug 'ternjs/tern_for_vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'sheerun/vim-polyglot'

" stylize
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-smooth-scroll'
Plug 'pseewald/vim-anyfold'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank'
Plug 'ryanoasis/vim-devicons'

" features
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'lyokha/vim-xkbswitch'
Plug 'qpkorr/vim-bufkill'

" colors
Plug 'dracula/vim'
Plug 'rakr/vim-one'
Plug 'flrnprz/plastic.vim'
Plug 'fatih/molokai'
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" END OF PlugS LIST

call plug#end()
