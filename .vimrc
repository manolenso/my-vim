" Vimrc File  for @manolenso

set nocompatible   " Disable vi-compatibility
filetype off "required by vundle
" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

"Load custom settings inspired by https://github.com/shawnplus/dotfiles/
source ~/.vim/startup/color.vim
source ~/.vim/startup/mapped_commenting.vim
source ~/.vim/startup/function.vim

"""""""""""""""""""""" VUNDLE CONFIG """""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle, required! 
Bundle 'https://github.com/gmarik/vundle.git'
nnoremap <Leader>bi :BundleInstall<CR>
nnoremap <Leader>bu :BundleInstall!<CR> " Because this also updates
nnoremap <Leader>bc :BundleClean<CR>
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rais'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-pathogen'
Bundle 'vim-ruby/vim-ruby'
Bundle 'plasticboy/vim-markdown'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mklabs/grunt.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-shell'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'gmarik/vundle'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'AtsushiM/sass-compile.vim'
Bundle 'sjl/gundo.vim'

""""""""" Gist Config"""""""""""""""""""""""
let g:gist_open_browser_after_post = 1
let g:gist_use_password_in_gitconfig = 1
let g:gist_clip_command = 'xclip -selection clipboard'


set t_Co=256
set encoding=utf-8
syntax on


"redefine keymapping for emmet
let g:user_emmet_leader_key='<C-e>'


"setup for powerline
let g:powerline_loaded = 1
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
let g:Powerline_symbols = 'fancy'

" Always show vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '

" or copy paste the following into your vimrc for shortform text
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '^V' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '^S' : 'S',
      \ }


set guifont=PragmataProPowerline\ for\ Powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
"set spell spelllang=fr
set showmode                    " always show what mode we're currently editing 
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saves
nmap <leader>w :w!<cr>w


" Mardown convert HTML
nmap <leader>c :%!/usr/local/bin/Markdown.pl --html4tags<cr>

" Down is really the next line
nnoremap j g+body

nnoremap k gk

"Easy escaping to normal modelww:w
imap jj <esc>c

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ### NERDTree CONFIGURATION{{{
"autocmd vimenter * if !argc() | NERDTree | endif
nmap <leader>n :NERDTree<CR>
silent! map <F3> :NERDTreeFind<CR>
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\env','\~$', '\.pyc$', '\.swp$', '\.egg-info$', '^dist$', '^build$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeHightlightCursorline=0
let NERDTreeDirArrows=0
let NERDTreeShowHidden=0
"let NERDChristmasTree=1
"let NERDTreeAutoCenter=0
"let NERDTreeShowLineNumbers=1
"let NERDTreeWinSize=40
"let NERDTreeMinimalUI=1
"}}}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>+
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"Show (partial) command in the status line
set showcmd

" Create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>

" Edit VIMRC File
nmap <leader>v :tabedit $MYVIMRC<CR>

highlight Search cterm=underline

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'

" Powerline (Fancy thingy at bottom stuff)
let g:Powerline_symbols = 'fancy'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch


" Remove search results
command! H let @/=""

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Auto-remove trailing spaces
autocmd BufWritePre *.php :%s/\s\+$//e

" Edit todo list for project
nmap ,todo :e todo.txt<cr>


" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>

"color 
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=green

" default the statusline to green when entering Vim
hi statusline guibg=green


