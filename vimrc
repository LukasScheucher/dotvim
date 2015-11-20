call pathogen#infect()
call pathogen#helptags()

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

inoremap jk <esc>

nnoremap <leader>s :w<cr>

nnoremap H 0
nnoremap L $


autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

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
