set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=/Users/mm/.dotfiles/.vim/bundle/Vundle.vim
let path="/Users/mm/.dotfiles/.vim/bundle"
let mapleader = " "     " set leader key
syntax on       		" syntax highlighting

" tabs and spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

"Write the old file out when switching between files.
set autowrite

"Display current cursor position in lower right corner.
set ruler

"Show lines numbers
set number

"Indent stuff
set smartindent
set autoindent
		
"Highlight searching
set hlsearch

" case insensitive search
set ignorecase
set smartcase

" toggle to paste without indenting
set pastetoggle=<F2>

nnoremap ; :

" Workflow 
set hidden
"" tabs (should be changed to not conflict with till command)
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tn  :tabnew<CR>
nnoremap td  :tabclose<CR>
"" windows
noremap <C-h>              :wincmd h<cr>
noremap <C-k>              :wincmd k<cr>
noremap <C-l>              :wincmd l<cr>
noremap <C-j>              :wincmd j<cr>

noremap ˙              :wincmd H<cr>
noremap ˚             :wincmd K<cr>
noremap ¬              :wincmd L<cr>
noremap ∆              :wincmd J<cr>

"resize windows"
nmap <left>  :3wincmd <<cr>
nmap <right> :3wincmd ><cr>
nmap <up>    :3wincmd +<cr>
nmap <down>  :3wincmd -<cr>
map <C-m> :tabedit %<CR> 

"Map escape key to jj -- much faster
imap jj <esc>
imap kk <esc>
imap ll <esc>
imap hh <esc>

if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
 augroup END
endif

call vundle#begin(path)

" move easily around the buffer"
Plugin 'Lokaltog/vim-easymotion'

"Linting"
Plugin 'scrooloose/syntastic'

"git wrapper"
Plugin 'tpope/vim-fugitive'
"git gutter"
Plugin 'airblade/vim-gitgutter'
"gitk"
Plugin 'gregsexton/gitv'
"history graph"
Plugin 'mbbill/undotree'

"surround text with any text easily"
Plugin 'tpope/vim-surround'

"Multiple cursors"
"Plugin 'terryma/vim-multiple-cursors'

" status/tabline
Plugin 'bling/vim-airline'

" buffers line"
Plugin 'bling/vim-bufferline'

" Rails 
Plugin 'tpope/vim-rails'

" Tagbar
Plugin 'majutsushi/tagbar'

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

"open browser"
Plugin 'tyru/open-browser.vim'

"greplace across multiple files interactively
Plugin 'greplace.vim'

"better line numbers slow scrolling :S "
"Plugin 'myusuf3/numbers.vim'

"fuzzy file finder"
Plugin 'kien/ctrlp.vim'

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
"Plugin 'StanAngeloff/php.vim'
Plugin 'mxw/vim-jsx'
Plugin 'burnettk/vim-angular'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'rhysd/vim-clang-format'

Plugin 'michalliu/sourcebeautify.vim'
call vundle#end()         
filetype plugin indent on    " required

source /Users/mm/.dotfiles/.vim-settings


