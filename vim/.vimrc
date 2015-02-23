set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/Users/mahmoud/.dotfiles/.vim/bundle/Vundle.vim
let path="/Users/mahmoud/.dotfiles/.vim/bundle"
set nocompatible
let mapleader = " "     " set leader key
syntax on       		" syntax highlighting

" tabs and spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set scrolloff=999

call vundle#begin(path)

" status/tabline
Plugin 'bling/vim-airline'

" Rails 
Plugin 'tpope/vim-rails'

" Tagbar
Plugin 'majutsushi/tagbar'

" move easily around the buffer"
Plugin 'Lokaltog/vim-easymotion'

"surround text with any text easily"
Plugin 'tpope/vim-surround'

"Linting"
Plugin 'scrooloose/syntastic'
Plugin 'hallettj/jslint.vim'

" useful for indenting css files"
Plugin 'godlygeek/tabular'

"emmet"
Plugin 'mattn/emmet-vim'

"auto completion"
" run this command at the ~/.vim/bundle/YouCompleteMe
" ./install.sh --clang-completer --omnisharp-completer
" Plugin 'Valloric/YouCompleteMe'

"indent level guide"
Plugin 'nathanaelkane/vim-indent-guides'

" add end word in rails function and other languages"
Plugin 'tpope/vim-endwise'

" auto close quote, brackets, ..
Plugin 'Raimondi/delimitMate'

"highlight matching html tab"
Plugin 'gregsexton/MatchTag'

"git wrapper"
Plugin 'tpope/vim-fugitive'
"git gutter"
Plugin 'airblade/vim-gitgutter'
"gitk"
Plugin 'gregsexton/gitv'
"history graph"
Plugin 'mbbill/undotree'

"open browser"
Plugin 'tyru/open-browser.vim'

"dash"
Plugin 'rizzatti/dash.vim'

"greplace across multiple files interactively
Plugin 'greplace.vim'

"nerdtree + tabs"
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'

"better line numbers"
Plugin 'myusuf3/numbers.vim'

"Multiple cursors"
Plugin 'terryma/vim-multiple-cursors'

"fuzzy file finder"
Plugin 'kien/ctrlp.vim'

"vim shell"
Plugin 'shougo/vimproc'
Plugin 'shougo/vimshell'

" all vim color schemes"
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
" color scheme switcher F8, Shift+F8"
Plugin 'xolox/vim-colorscheme-switcher'

"""" Languages support """"
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-haml' "and sass
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'klen/python-mode'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'
Plugin 'nono/jquery.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'mxw/vim-jsx'
Plugin 'burnettk/vim-angular'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'rhysd/vim-clang-format'

Plugin 'michalliu/sourcebeautify.vim'
call vundle#end()         
filetype plugin indent on    " required

source /Users/mahmoud/.dotfiles/.vim-settings


