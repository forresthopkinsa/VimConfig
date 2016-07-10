set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"nmap <silent> <A-Left> :wincmd h<CR>
"nmap <silent> <A-Right> :wincmd l<CR>

"nmap <silent> <A-Down> :wincmd r<CR>

nnoremap <tab> <c-w>

nmap <CR> o<Esc>

set encoding=utf-8
syntax on
let python_highlight_all=1
set number

filetype indent plugin on
set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=2

let g:SimpylFold_docstring_preview = 1
set foldlevelstart=2

set laststatus=2

" PEP8 Compliance
au BufNewFile,BufRead *.py
    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
    \ set fileformat=unix

" Not working
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Color scheming
set t_Co=256
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

" Airline custom glyphs
let g:airline_powerline_fonts = 1
" Fix for possible glitches
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
