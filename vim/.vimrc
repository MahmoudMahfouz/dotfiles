set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/Users/mahmoud/.dotfiles/.vim/bundle/Vundle.vim
let path="/Users/mahmoud/.dotfiles/.vim/bundle"

call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'

Plugin 'chrisbra/color_highlight.git'
Plugin 'skwp/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'jby/tmux.vim.git'
Plugin 'morhetz/gruvbox'
Plugin 'xsunsmile/showmarks.git'
Plugin 'chriskempson/base16-vim'

Plugin 'godlygeek/csapprox.git' 



Plugin 'gregsexton/gitv'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'


Plugin 'jistr/vim-nerdtree-tabs.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'


Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake.git'
Plugin 'tpope/vim-rvm.git'
Plugin 'vim-ruby/vim-ruby.git'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'skwp/vim-iterm-rspec'
Plugin 'skwp/vim-spec-finder'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'tpope/vim-bundler'



Plugin 'justinmk/vim-sneak'
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/IndexedSearch'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'skwp/greplace.vim'
Plugin 'Lokaltog/vim-easymotion'


Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Shougo/neocomplete.git'
Plugin 'briandoll/change-inside-surroundings.vim.git'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'vim-scripts/camelcasemotion.git'
Plugin 'vim-scripts/matchit.zip.git'
Plugin 'kristijanhusak/vim-multiple-cursors'
Plugin 'Keithbsmiley/investigate.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'bogado/file-line.git'
Plugin 'mattn/webapi-vim.git'
Plugin 'sjl/gundo.vim'
Plugin 'skwp/YankRing.vim'
Plugin 'tomtom/tlib_vim.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-endwise.git'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-scripts/AnsiEsc.vim.git'
Plugin 'vim-scripts/AutoTag.git'
Plugin 'vim-scripts/lastpos.vim'
Plugin 'vim-scripts/sudo.vim'
Plugin 'goldfeld/ctrlr.vim'


call vundle#end()         
filetype plugin indent on    " required

source /Users/mahmoud/.dotfiles/.vim-settings


