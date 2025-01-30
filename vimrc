" show trailing whitespace - taken from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/
" syntax highlighting options
colorscheme elflord
syntax on
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.sls set filetype=yaml

" set the title for mac terminal tabs
autocmd BufEnter * let &titlestring = expand("%:@")
set title

" code consistency / quality
if v:version >= 702
  call matchadd('ColorColumn', '\%115v', 100)
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
:nnoremap <silent> <CR> :nohlsearch<cr>

" --------------------------------------------------------------------
" pathogen - http://www.vim.org/scripts/script.php?script_id=2332
call pathogen#infect()

" --------------------------------------------------------------------
" avoid the escape key: http://vim.wikia.com/wiki/Avoid_the_escape_key
imap jj <Esc>
imap jk <Esc>
" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^
" --------------------------------------------------------------------
" vimwiki - http://www.vim.org/scripts/script.php?script_id=2226
set nocompatible
filetype plugin indent on
" Open wiki index with <Leader>ww or <Leader>wt
" http://stackoverflow.com/questions/1764263/what-is-the-leader-in-a-vimrc-file

let g:vimwiki_url_maxsave=0
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
set ruler
set showcmd
set noswapfile

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
map <Leader>r :! rubocop %<CR>

runtime macros/matchit.vim
nnoremap <Leader>h :SemanticHighlightToggle<cr>

" Reload our .vimrc
nmap <leader>~ :source ~/.vimrc<CR>:redraw!<CR>:AirlineRefresh<CR>:echo "~/.vimrc reloaded!"<CR>

" always show the airline statusbar
set laststatus=2

map y <Plug>(highlightedyank)
let g:highlightedyank_highlight_duration = 1200

" https://twitter.com/MasteringVim/status/811868588785143808
" J/K will move selected block up/down in Visual block mode.
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" https://twitter.com/csswizardry/status/903244333687721988
" Give some scaffolding to new files of specified types
autocmd BufNewFile *.sh 0r ~/.vim/templates/template.sh

set modelines=5

" https://jovicailic.org/2015/05/saving-read-only-files-in-vim-sudo-trick/
" make an alias for the sudo tee trick
cmap w!! w !sudo tee % >/dev/null

" https://twitter.com/jesstelford/status/992756386160234497
highlight badWords ctermbg=red ctermfg=white
fun! HiBadWords()
	match badWords /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\)\>/
endfun
autocmd InsertEnter *.md call HiBadWords()
autocmd InsertLeave *.md call HiBadWords()
autocmd BufRead,BufNewFile *.tf set filetype=tf
