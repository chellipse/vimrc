
set nocompatible 
" enables iMproved part of vIM (safety mode)

"set cp
" enables Vi comptatibility (the danger zone)

filetype off
" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'vimwiki/vimwiki' " also VIMWIKI

" All of your Plugins must be added before the following line
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


set number

" turns on syntax highlighting
syntax on

" softwrap on word boundaries at 80 chars (ignoring gutter)
"set wrap
"set linebreak
"set textwidth=80

set t_Co=256

" set color scheme
"colorscheme darkblue

" kyle's colorscheme
set background=dark
let g:everforest_enable_italic=1
set termguicolors
colorscheme everforest

" turn on line numbers. the current line will display the absolute line
" number, and all lines above and below will show the relative number.
" your coworkers hate this.
" set number relativenumber

" highlight the line the cursor is on
set cursorline

" enable copying to system clipboard. doesn't seem to break anything else
set clipboard=unnamed

" auto reload files when they're changed outside of vim
" " (I think) unless they're deleted

set autoread

" open new splits to the right or below like a non sicko
set splitbelow
set splitright

" ignore case when searching
set ignorecase

" ... unless there's a capital letter in the query
set smartcase

" use visual bells instead of audio (doesn't seem to work)
set noerrorbells
" (does seem to work...)
set belloff=all

" enable mouse input like the coward you are
" set mouse=a

" set code folding to use syntax (e.g. braces)
set foldmethod=indent

" don't fold the whole file on open
"set foldlevel=99

" SAVE FOR LATER

" set autoindent
" set expandtab
" set tabstop=4
" set shiftwidth=4


" STATUSLINE
set laststatus=2
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 


" VIMWIKI
let g:vimwiki_list = [{'path': '/mnt/c/Users/Chellsey-Reed/Dropbox/Vimwiki/vimwiki',
                      \ 'path_html': '~/mywiki_html'}]
