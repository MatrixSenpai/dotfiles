set nocompatible
syntax on

" vundle
filetype on
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'airblade/vim-gitgutter'
Bundle 'austintaylor/vim-indentobject'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'django.vim'
Bundle 'gmarik/vundle'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'leafgarland/typescript-vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'lunaru/vim-less'
Bundle 'mileszs/ack.vim'
Bundle 'miripiruni/CSScomb-for-Vim'
Bundle 'msanders/snipmate.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'
Bundle 'php.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-pastie'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-vividchalk'
Bundle 'eventualbuddha/vim-protobuf'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/Align'
Bundle 'vim-scripts/greplace.vim'
Bundle 'vim-scripts/matchit.zip'


" code formatting
set autoindent                                                           " automatically indent on new lines
set expandtab                                                            " expand tabs to spaces
set tabstop=8                                                            " actual tab width
set softtabstop=2                                                        " insert mode tab/backspace width
set shiftwidth=2                                                         " normal mode (auto)indent width
set backspace=2                                                          " improve the working of <BS>, <Del>, CTRL-W and CTRL-U in insert mode.


" editor setup
set autoread                                                             " reload files when they are updated
set clipboard=unnamed                                                    " use system clipboard for yanking and putting
set encoding=utf-8                                                       " define char set
set laststatus=2                                                         " always show status line
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l     " fancy status line
set list                                                                 " show whitespace
set listchars=tab:→\ ,trail:·
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                             " show tab completion menu
set wildmode=longest,list,full
set nowrap                                                               " no wrapping by default
set showcmd                                                              " give info on current command
set number                                                               " show line numbers
set hidden                                                               " hide buffers instead of unloading them
set report=0                                                             " Always report number of lines changed
set ruler                                                                " show line and column number of cursor
set cursorline                                                           " higlight screen line of the cursor
set scrolloff=4                                                          " scroll offset


" search
set ignorecase                                                           " case-insensitive search
set smartcase                                                            " case-sensitive search if query contains caps
set hlsearch                                                             " highlight search results
set incsearch                                                            " search as you type


" backup and undo files
set nobackup
set nowritebackup
set noswapfile
set backupdir=$HOME/.vim/backup
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.                                        " keep swp files under ~/.vim/swap
set undofile
set undodir=~/.vim/undo
set undoreload=10000


" editor styling
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
colorscheme Tomorrow-Night


" key mapping
let mapleader = ','
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>l :Align
nmap <leader>a :Ack<space>
nmap <leader>b :CtrlPBuffer<CR>
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
nmap <leader>t :CtrlP<CR>
nmap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nmap <leader>] :TagbarToggle<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>g :GitGutterToggle<CR>
nmap <leader>c <Plug>Kwbd
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>
nmap Z :tabprev<CR>
nmap X :tabnext<CR>


" just in case you forgot to sudo
cmap w!! %!sudo tee > /dev/null %


" automatically jump to last known position in a file
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif


" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc


" automatically clean whitespace
map <leader>s  :%s/\s\+$//<cr>:let @/=''<CR>


" filetypes
filetype plugin indent on
autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md set spell
autocmd BufRead,BufNewFile *.module set filetype=php
autocmd BufRead,BufNewFile *.install set filetype=php
autocmd BufRead,BufNewFile *.test set filetype=php
autocmd BufRead,BufNewFile *.inc set filetype=php
autocmd BufRead,BufNewFile *.profile set filetype=php
autocmd BufRead,BufNewFile *.view set filetype=php
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
autocmd BufRead,BufNewFile *.twig set ft=htmldjango
autocmd BufRead,BufNewFile *.rabl set ft=ruby
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

" plugin settings

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  let g:ackprg = 'ag --nogroup --column'

  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

