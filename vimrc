" LukasScheucher personal vimrc
" you can find the full repository under 
" https://github.com/LukasScheucher/dotvim.git
"
" All plugins are handle via vundle.
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/lukas/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" " let Vundle manage Vundle, required
"
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
"YCM need to be compiled on every machine. use the following commands"
"cd ~/.vim/bundle/YouCompleteMe
"./install.py --clang-completer
" Please also consider the ycm_extra_config.py script
" for any given directory run <ctags -R .> first for YCM to work properly
Plugin 'Valloric/YouCompleteMe'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdcommenter'

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" proper ctags call:
" ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
set tags+=/scratch/scheucher/workspace/baci_hiwi/tags

"call pathogen#infect()
"call pathogen#helptags()

let g:airline_powerline_fonts = 1
"let g:airline_symbols
"enable 256 colors in terminal, this might be useful if problems with
" the depiction of vim-airline occurs
"set t_Co=256 "enable 256 colors in the terminal
"set t_AB=^[[48;5;%dm "not really sure what this does
"set t_AF=^[[38;5;%dm "not really sure what this does

set hlsearch
set showmatch
set expandtab

set tags=./tags,./TAGS,tags,TAGS,/usr/lib/petscdir/3.4.2/tags

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set number

syntax enable

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines






"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F7> :NERDTree<CR>

inoremap jk <esc>

nnoremap <leader>s :w<cr>

nnoremap H 0
nnoremap L $

"mapping to simplify navigation between tabs
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-n> :tabnew<CR>

" launch NERDTree autoamtically on statup
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let g:NERDTreeShowHidden=1 "show hidden files in NERDTree by default
let g:airline_powerline_fonts=1

let &colorcolumn=join(range(81,81),",")
highlight ColorColumn ctermbg=7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
