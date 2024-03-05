" ==============================================================================
" BASE CONFIGURATION
" ==============================================================================

" OPENING VIM ~~~~~~~~~~~~~~~~~~~~~~~~~~

" disables opening vim with zero or directory argument(s)
if argc() == 0
  echomsg "vimrc: Refusing to open vim without file argument"
  quit
endif
if argc() >= 2
  echomsg "vimrc: Refusing to open vim with multiple arguments"
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

" use 2-space tabs for: JS, Typescript, Proto, bash, tf
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType proto setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType sh setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType json setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType terraform setlocal tabstop=2 softtabstop=2 shiftwidth=2

set expandtab      " use space instead of tabs
set autoindent     " autoindents like in IDEs

filetype plugin indent on

" Ensure that tsx files are recognized as typescript
augroup SyntaxSettings
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript
  autocmd BufNewFile,BufRead *.svelte set filetype=typescript
augroup END

" Use new regular expression engine (otherwise typescript syntax is extremely slow)
set re=0

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
set clipboard=unnamed

" space open/closes folds
nnoremap <space> za

" DISPLAY / COLOR ~~~~~~~~~~~~~~~~~~~~~~

set title         " set screen title to name of file
set number        " display line numbers on left
set showmatch     " highlight matching parentheses characters
set hlsearch      " highlight searches
set smartcase
set ignorecase    " HACK: for smartcase to work we must then set ignorecase
set lazyredraw    " redraw only when we need to
set wildmenu      " better command-line completion
set laststatus=2  " display status bar

" display ruler after column 80, only for python, C/C++, and TS
" see https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
autocmd FileType python setlocal colorcolumn=81
autocmd FileType cpp setlocal colorcolumn=81
autocmd FileType c setlocal colorcolumn=81
autocmd FileType typescript setlocal colorcolumn=81
if stridx($TERM, '256color') != -1
  autocmd FileType python highlight ColorColumn ctermbg=235
  autocmd FileType cpp highlight ColorColumn ctermbg=235
  autocmd FileType c highlight ColorColumn ctermbg=235
  autocmd FileType typescript highlight ColorColumn ctermbg=235
else
  autocmd FileType python highlight ColorColumn ctermbg=darkgrey
  autocmd FileType cpp highlight ColorColumn ctermbg=darkgrey
  autocmd FileType c highlight ColorColumn ctermbg=darkgrey
  autocmd FileType typescript highlight ColorColumn ctermbg=darkgrey
endif

" dark grey line numbers
highlight LineNr ctermfg=darkgrey

set statusline=
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m
set statusline+=%=
set statusline+=\ %l/%L:%c
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" index search
set shortmess-=S

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

" move left/right 20 lines
map <S-Left> 20h
map <S-Right> 20l

" REMAPPING KEY BINDINGS ~~~~~~~~~~~~~~~

" commonly misspelled commands
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
cnoreabbrev Wq wq
nnoremap q: <Nop>

" split pane
map sph <C-w>s
map spv <C-w>v
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

" KEYBOARD SHORTCUTS ~~~~~~~~~~~~~~~~~~~

" search for word under cursor
nmap f *N

" ==============================================================================
" PACKAGES / PLUGINS
" ==============================================================================

execute pathogen#infect()

" vim-plug auto install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Eye Candy ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" highlight colors
Plug 'ap/vim-css-color'

" Tools ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" wrap args to many lines
Plug 'FooSoft/vim-argwrap'
" syntax checker
Plug 'scrooloose/syntastic'

" Formatting ~~~~~~~~~~~~~~~~~~~~~~~~~~~

" respect editorconfig files
Plug 'editorconfig/editorconfig-vim'
" automatic bracket and quote matching, etc
Plug 'Raimondi/delimitMate'
" context and indentation-aware pasting
Plug 'sickill/vim-pasta'
" powerful commenting
Plug 'tpope/vim-commentary'
" manage and replace quotes, brackets, parens, etc
Plug 'tpope/vim-surround'
" clean whitespace
Plug 'ntpeters/vim-better-whitespace'

" Languages ~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

" ==============================================================================
" PLUGIN CONFIGURATIONS
" ==============================================================================

" vim-argwrap
nnoremap <silent> aw :ArgWrap<CR>

" syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_javascript_checkers = ['eslint']

" clean whitespace
let g:strip_whitespace_on_save = 1
let g:strip_only_modified_lines = 0

" go
let g:go_imports_mode = 'gopls'
let g:go_imports_autosave = 1
let g:go_fmt_autosave = 1
let g:go_fmt_command = 'gofmt'
let g:go_fmt_options = {'gofmt': '-s'}
let g:go_fmt_experimental = 1
let g:go_auto_type_info = 1

map gb <C-T>
autocmd FileType go nnoremap <buffer> gt :GoDefType<CR>

" " typescript
autocmd FileType typescript nnoremap <buffer> gd :TsuDefinition<CR>
autocmd FileType typescript nnoremap <buffer> gt :TsuTypeDefinition<CR>
autocmd FileType typescript nnoremap <buffer> gi :TsuImplementation<CR>

" ==============================================================================
" UNMAP KEY BINDINGS
" ==============================================================================

" See https://hea-www.harvard.edu/~fine/Tech/vi.html for all vi commands
map a <Nop>
map b <Nop>
map c <Nop>
map e <Nop>
map m <Nop>
map s <Nop>
map t <Nop>
map w <Nop>
map x <Nop>

map A <Nop>
map B <Nop>
map C <Nop>
map D <Nop>
map E <Nop>
map F <Nop>
map H <Nop>
map J <Nop>
map L <Nop>
map M <Nop>
map O <Nop>
map R <Nop>
map S <Nop>
map T <Nop>
map U <Nop>
map W <Nop>
map X <Nop>
map Y <Nop>
map Z <Nop>

map ! <Nop>
map @ <Nop>
map $ <Nop>
map ^ <Nop>
map & <Nop>
map \( <Nop>
map \) <Nop>
map \ <Nop>
map \| <Nop>
map - <Nop>
map _ <Nop>
map = <Nop>
map + <Nop>
map ; <Nop>
map ' <Nop>
map ` <Nop>
map " <Nop>
map ~ <Nop>
map , <Nop>
map . <Nop>

map <C-B> <Nop>
map <C-D> <Nop>
map <C-F> <Nop>
map <C-G> <Nop>
map <C-M> <Nop>
map <C-N> <Nop>
map <C-P> <Nop>
map <C-Q> <Nop>
map <C-S> <Nop>
map <C-U> <Nop>
map <C-Z> <Nop>

map q: <Nop>

" NEW FEATURES =============================

" Was encountering issues with xml files lagging; VIM syntax-highlighting is slow for long lines
set synmaxcol=400

" sourcegraph
nnoremap <leader>cs :silent :execute '!$SHELL -i -c "browsesource $(basename $(git rev-parse --show-toplevel)) $(git ls-files --full-name %) ' . line('.') . '"'<CR>
