set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs"'

Plugin 'dylanaraps/wal'
Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Chiel92/vim-autoformat'
Plugin 'Raimondi/delimitMate'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'

Plugin 'ntpeters/vim-better-whitespace'
Plugin 'godlygeek/tabular'

call vundle#end()

filetype plugin indent on

colorscheme wal

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set linebreak
set splitright

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Make these commonly mistyped commands still work
command! WQ wq
command! Wq wq
command! Wqa wqa
command! W w
command! Q q

" Use :C to clear hlsearch
command! C nohlsearch

" use 'Y' to yank to the end of a line, instead of the whole line
noremap <silent> Y y$

syntax on

set mouse=a

hi clear SignColumn

" ----- jistr/vim-nerdtree-tabs -----
" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeMinimalUI=1

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
" Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)

" ----- airblade/vim-gitgutter settings -----
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_inactive_collapse=1

" ----- Raimondi/delimitMate settings -----
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END


