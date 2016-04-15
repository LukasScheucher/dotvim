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
"{{{basic IDE building Plugins________________________________________________
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
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{MATLAB specific stuff_____________________________________________________
Plugin 'vim-scripts/MatlabFilesEdition'
Plugin 'tmhedberg/matchit'                 "extends maching capiabilities of vim to more than just single characters
source $VIMRUNTIME/macros/matchit.vim
autocmd BufEnter *.m    compiler mlint
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{latex plugins_____________________________________________________________
Plugin 'lervag/vimtex'
Plugin 'vim-latex/vim-latex'
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{other plugins
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dajero/VimLab' "replicates matlab support; uses tmux
Plugin 'scrooloose/syntastic'
"Plugin 'ervandew/screen'
Plugin 'JuliaLang/julia-vim'
"Plugin 'jpalardy/vim-slime'
"Plugin 'MichaelMalick/vim-raven'
Plugin 'benmills/vimux'
Plugin 'bronson/vim-trailing-whitespace'
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{VimuxSlime function definition____________________________________________
 function! VimuxSlime()
     call VimuxSendText(@v)
       call VimuxSendKeys("Enter")
        endfunction

         " If text is selected, save it in the v buffer and send that buffer
         " it to tmux
         "  vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>
         "
         "   " Select current paragraph and send it to tmux
         "    nmap <LocalLeader>vs vip<LocalLeader>vs<CR>
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on "not sure if this is the required line for NERDCommenter


"{{{vim behaviour_____________________________________________________________
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
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{basic IDE construction____________________________________________________
" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <F8> :TagbarToggle<CR>
nnoremap <F7> :NERDTree<CR>

nnoremap <leader>t :tabedit %<cr>
nnoremap <leader>tt :tabclose<cr>

inoremap jk <esc>

nnoremap <leader>s :w<cr>

nnoremap H 0
nnoremap L $
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{key mappings for navigation
"deactivate arrowkeys to get accustomed to hjkl navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


"mapping to simplify navigation between tabs
noremap <S-L> :tabn<CR>
noremap <S-H> :tabp<CR>
noremap <S-N> :tabnew<CR>
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

"{{{other things______________________________________________________________
"remove all trailing whitespaces
nnoremap <leader>rts :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"syntax on
"set syntax=whitespace

" launch NERDTree autoamtically on statup
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
autocmd VimEnter * colorscheme 256-grayvim
"autocmd VimEnter * set background=dark "this command might be needed for some
"colorshemes
let g:NERDTreeShowHidden=1 "show hidden files in NERDTree by default
let g:airline_powerline_fonts=1

let &colorcolumn=join(range(81,81),",")
highlight ColorColumn ctermbg=7

" automatically open quickfix window after running space
autocmd QuickFixCmdPost * :copen

"the following command is needed so that the latex suite is also loaded
"on empty texfiles
let g:tex_flavour='latex'

" proper ctags call:
" ctags --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
set tags+=/scratch/scheucher/workspace/baci_hiwi/tags

"call pathogen#infect()
"call pathogen#helptags()

let g:airline_powerline_fonts = 1
"let g:airline_symbols
"enable 256 colors in terminal, this might be useful if problems with
" the depiction of vim-airline occurs
set t_Co=256 "enable 256 colors in the terminal
"set t_AB=^[[48;5;%dm "not really sure what this does
"set t_AF=^[[38;5;%dm "not really sure what this does
"}}}

"{{{user interface settings___________________________________________________
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
"}}}__________________________________________________________________________

"{{{custom functions__________________________________________________________
"nnoremap <C-W>O :call MaximizeToggle()<CR>
"nnoremap <C-W>o :call MaximizeToggle()<CR>
"nnoremap <C-W><C-O> :call MaximizeToggle()<CR>

"function! MaximizeToggle()
    "if exists("s:maximize_session")
      "exec "source " . s:maximize_session
      "call delete(s:maximize_session)
      "unlet s:maximize_session
      "let &hidden=s:maximize_hidden_save
      "unlet s:maximize_hidden_save
    "else
      "let s:maximize_hidden_save = &hidden
      "let s:maximize_session = tempname()
      "set hidden
      "exec "mksession! " . s:maximize_session
      "only
    "endif
"endfunction
"}}}‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
