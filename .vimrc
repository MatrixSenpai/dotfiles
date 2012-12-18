syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nobackup
set nowritebackup
set ruler
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
set smartindent
set autoindent
set smarttab
set number
colorscheme Tomorrow-Night

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif

au BufNewFile,BufRead *.less set filetype=less

:nmap Z :tabprev<CR>
:nmap X :tabnext<CR>
