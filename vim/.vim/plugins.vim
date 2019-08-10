" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" PLUGINS LIST

" programming
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'ternjs/tern_for_vim'
Plugin 'prettier/vim-prettier', { 'do': 'npm install' }
Plugin 'sheerun/vim-polyglot'

" stylize
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'pseewald/vim-anyfold'
Plugin 'Yggdroot/indentLine'
Plugin 'machakann/vim-highlightedyank'
Plugin 'ryanoasis/vim-devicons'

" features
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'lyokha/vim-xkbswitch'
Plugin 'qpkorr/vim-bufkill'

" colors
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
