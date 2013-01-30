syntax on
"Tabbing
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set smarttab

"Set no backup
set noswapfile
set nowb
set nobackup
set nowritebackup

"GUI Config
set ruler
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
set number
colorscheme Tomorrow-Night

"Status Line
set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

"Key Mapping
:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>

"Set file types per extension
if has("autocmd")
  augroup drupal
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
  augroup END

  augroup style
    autocmd BufNewFile,BufRead *.less set filetype=less
  augroup END

endif
