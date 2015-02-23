set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Snippets
Bundle "http://github.com/gmarik/snipmate.vim.git"

" Git integration
Bundle "git.zip"
Bundle "fugitive.vim"

" Utility
Bundle "surround.vim"
Bundle "SuperTab"
Bundle "https://github.com/vim-scripts/TaskList.vim.git"
Bundle "The-NERD-tree"
Bundle "https://github.com/fholgado/minibufexpl.vim.git"
Bundle "EasyMotion"

" Ack
Bundle "ack.vim"

" Command-T
Bundle "git://git.wincent.com/command-t.git"

" Gundo
Bundle "Gundo"

" Development 
Bundle "pep8"
Bundle "pyflakes"
Bundle "pytest.vim"
Bundle "Lokaltog/powerline", {"rtp":  "powerline/bindings/vim"}
Bundle "PIV"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
    
set laststatus=2
set showtabline=2
set noshowmode

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskLisk

syntax on
set background=dark
colorscheme solarized

filetype on
filetype plugin indent on

" au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

set colorcolumn=81
set cursorcolumn
set cursorline

map <leader>g :GundoToggle<CR>

let g:pyflakes_use_quickfix = 0

let g:pep8_map='<leader>8'

set number

