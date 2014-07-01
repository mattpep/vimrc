" syntax highlighting options
colo desert
syn on
au BufRead,BufNewFile *.md set filetype=markdown

" code consistency / quality
set ts=2
set shiftwidth=2
set expandtab
set colorcolumn=115
hi ColorColumn guibg=#2d2d2d ctermbg=246

" folding options
set foldlevel=20
set foldmethod=indent

" noone uses serial lines anymore!
set ttyfast

" searching options
set incsearch
set hlsearch
autocmd InsertEnter * :set nohlsearch "http://superuser.com/questions/156248/disable-set-hlsearch-when-i-enter-insert-mode
autocmd InsertLeave * :set hlsearch

" --------------------------------------------------------------------
" avoid the escape key: http://vim.wikia.com/wiki/Avoid_the_escape_key
imap jj <Esc>
imap jk <Esc>


set cursorline

" --------------------------------------------------------------------
" lots of relative line number stuff, taken from http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
set relativenumber
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

