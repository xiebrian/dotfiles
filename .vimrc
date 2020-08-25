" ==============================================================================
" BASE CONFIGURATION
" ==============================================================================

" OPENING VIM ~~~~~~~~~~~~~~~~~~~~~~~~~~

" disables opening vim with zero or directory argument(s)
if argc() == 0
  echomsg "vimrc: Refusing to open vim without file argument"
  quit
endif

for f in argv()
  if isdirectory(f)
    echomsg "vimrc: Refusing to edit directory " . f
    quit
  endif
endfor

" SPACES / INDENTS ~~~~~~~~~~~~~~~~~~~~~

set tabstop=4      " width of tab character
set softtabstop=4  " fine tunes amount of white space to be added
set shiftwidth=4   " determines amount of whitespace to add in normal mode

" use 2-space tabs for Typescript and Proto files
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType proto setlocal tabstop=2 softtabstop=2 shiftwidth=2

set expandtab      " use space instead of tabs
set autoindent     " autoindents like in IDEs

filetype plugin indent on

" prevents autoformatting for comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" allow backspacing over autoindent, line breaks, and start of insert action
set backspace=indent,eol,start

vnoremap < <gv
vnoremap > >gv

" EDITING ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set nowrap         " prevent lines from wrapping around
set scrolloff=7    " minimum number of lines above and below end
set linebreak      " prevent individual words from being split into two lines
set nostartofline  " prevent cursor from randomly moving to front of line
set mouse=a        " mouse click takes you to cursor location 

set foldenable         " enable folding
set foldlevelstart=10  " opens most folds by default
set foldnestmax=10     " 10 nested fold max
set foldmethod=indent  " fold based on indent level; run ':help foldmethod' for other configs

" redo previous change with r
map r <C-r>

" copy/paste/cut to system clipboard
set clipboard=unnamedplus

" DISPLAY / COLOR ~~~~~~~~~~~~~~~~~~~~~~

set title         " set screen title to name of file
set number        " display line numbers on left
set showmatch     " highlight matching parentheses characters
set hlsearch      " highlight searches
set ignorecase    " case insensitive
set lazyredraw    " redraw only when we need to
set wildmenu      " better command-line completion
set laststatus=2  " display status bar

" display ruler after column 80, only for python and C/C++
autocmd FileType python setlocal colorcolumn=81
autocmd FileType cpp setlocal colorcolumn=81
autocmd FileType c setlocal colorcolumn=81
autocmd FileType python highlight ColorColumn ctermbg=black
autocmd FileType cpp highlight ColorColumn ctermbg=black
autocmd FileType c highlight ColorColumn ctermbg=black

" dark grey line numbers
highlight LineNr ctermfg=darkgrey

set statusline=
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m
set statusline+=%=
set statusline+=\ %l/%L:%c
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" NAVIGATION ~~~~~~~~~~~~~~~~~~~~~~~~~~~

" drag up/down the screen, without changing the cursor location
map <C-Up> <C-Y>
map <C-Down> <C-E>

" always move by display lines when wrapping
map <Up> gk
map <Down> gj

" jump 10 lines
map <S-Up> 10k
map <S-Down> 10j

" REMAPPING KEY BINDINGS ~~~~~~~~~~~~~~~

" commonly misspelled commands
command WQ wq
command Wq wq
command W w
command Q q
nnoremap q: <Nop>

" split pane
map hsp <C-w>s
map vsp <C-w>v
set splitbelow
set splitright
noremap <C-H> <C-W><Left>
noremap <C-J> <C-W><Down>
noremap <C-K> <C-W><Up>
noremap <C-L> <C-W><Right>

" MISCELLANEOUS ~~~~~~~~~~~~~~~~~~~~~~~~

" ignore these patterns when opening files using glob
set wildmode=list:longest,list:full
set wildignore+=*.o
set wildignore+=*.obj,*.class
set wildignore+=*.jpg,*.jpeg,*.gif,*.png
set wildignore+=*.zip,*.apk,*.gz
set wildignore+=*.pyc
set wildignore+=*.swp,*.swo

set nocompatible
set nocp

" DISABLE KEY BINDINGS ~~~~~~~~~~~~~~~~~

nnoremap a <Nop>

" ==============================================================================
" PLUGINS
" ==============================================================================

execute pathogen#infect()

" vim-argwrap
nnoremap <silent> aw :ArgWrap<CR>

" vim-go
" prevent gofmt from running automatically when saving
let g:go_fmt_autosave = 0
" 'go back' to the last tag (use after GoDef)
map gb <C-T>
