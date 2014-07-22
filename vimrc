" syntax highlighting options
colo desert
syn on
au BufRead,BufNewFile *.md set filetype=markdown

" code consistency / quality
set ts=2
set shiftwidth=2
set expandtab
if v:version >= 703
  set colorcolumn=115
endif
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
" pathogen - http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()

" --------------------------------------------------------------------
" avoid the escape key: http://vim.wikia.com/wiki/Avoid_the_escape_key
imap jj <Esc>
imap jk <Esc>

" --------------------------------------------------------------------
" vimwiki - http://www.vim.org/scripts/script.php?script_id=2226
set nocompatible
filetype plugin on
" Open wiki index with <Leader>ww or <Leader>wt
" http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file

" --------------------------------------------------------------------
" lots of relative line number stuff, taken from http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
if v:version >= 703
  set relativenumber
  function! NumberToggle()
    if(&relativenumber == 1)
      set number
    else
      set relativenumber
    endif
  endfunc
endif
nnoremap <C-n> :call NumberToggle()<cr>

au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" --------------------------------------------------------------------
"  misc settings
set showmatch
set showmode
set cursorline

map <F7> :tabp
imap <F7> <Esc>:tabp
map <F8> :tabnew
imap <F8> <Esc>:tabnew
map <F9> :tabn
imap <F9> <Esc>:tabn

