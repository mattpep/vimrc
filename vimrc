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

" avoid the escape key: http://vim.wikia.com/wiki/Avoid_the_escape_key
imap jj <Esc>
imap jk <Esc>


set cursorline
