" Plugin Manager
set rtp+=~/.vim/bundle/Vundle.vim

syntax enable
set nocompatible              " be iMproved, required
set mouse=a
filetype off                  " required

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'arzg/vim-colors-xcode'
Plugin 'mechatroner/rainbow_csv'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'joshdick/onedark.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

" Automatic detection of filetype
syntax enable 
au BufRead,BufNewFile *.run,*.cir set filetype=sh
au BufRead,BufNewFile *.sim,*.cir,*.in,*.net,*.extpp.*,*.lib,*.l,*.cdl set filetype=spice 

" Scripts templates
au BufNewFile *.sh 0r ~/bin/skeletons/bash.sh
au FileType spice setlocal commentstring=*\ %s

" show line numbers
set relativenumber
set rnu nu

set hlsearch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Set Status bar to always visible
set laststatus=2

" Setup Wildmenu
set path +=**
set wildmenu

" Expand Tab = 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Change the direction of new splits
set splitbelow
set splitright

" Encoding settins
set t_TI= t_TE=
set encoding=UTF-8

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" maximize current split or return to previous [PLUGIN]
noremap <C-m> :MaximizerToggle<CR>

" Autocomplition
set ruler
set complete+=k
set omnifunc=syntaxcomplete#Complete
"set dictionary+=/misc/working/projects/Reliability/scripts/lib/*.sh


" Set Color Theme
set background=dark
" colorscheme xcodewwdc
colorscheme onedark

let g:lightline = {
      \ 'colorscheme': 'onedark',
        \ }
" Mappings
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-n> :NERDTreeToggle<CR>
