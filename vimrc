" syntax highlighting options
colorscheme desert
syntax on
autocmd BufRead,BufNewFile *.md set filetype=markdown

" code consistency / quality
set ts=2
set shiftwidth=2
set expandtab
if v:version >= 703
  set colorcolumn=115
endif
highlight ColorColumn guibg=#2d2d2d ctermbg=246

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
" http://tilvim.com/2013/08/22/clearing-search-highlights.html
" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" --------------------------------------------------------------------
" pathogen - http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()

" --------------------------------------------------------------------
" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^
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
  autocmd FocusLost * :set number
  autocmd FocusGained * :set relativenumber
  autocmd InsertEnter * :set number
  autocmd InsertLeave * :set relativenumber
else
  autocmd FocusLost * :set number
  autocmd InsertEnter * :set number
endif
nnoremap <C-n> :call NumberToggle()<cr>

" RSpec.vim mappings: https://github.com/thoughtbot/vim-rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" --------------------------------------------------------------------
"  misc settings
set showmatch
set showmode
set cursorline

map <F7> :tabp
imap <F7> <c-o>:tabp
map <F8> :tabnew
imap <F8> <c-o>:tabnew
map <F9> :tabn
imap <F9> <c-o>:tabn

command W w " I sometimes mistype :w as :W

" ----
" some ruby niceties
" Insert the Ruby hashrocket with CTRL+l
imap <c-l> <space>=><space>

" Reload our .vimrc
nmap <leader>~ :source ~/.vimrc<CR>:redraw!<CR>:AirlineRefresh<CR>:echo "~/.vimrc reloaded!"<CR>
