set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

"Plugin 'scrooloose/nerdtree'
"Plugin 'jistr/vim-nerdtree-tabs"'

Plugin 'flxf/uCpp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
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
Plugin 'dylanaraps/wal.vim'

call vundle#end()

filetype plugin indent on

colorscheme wal

set wildmenu
set wildignorecase
set wildmode=list:longest,full

set splitright
set splitbelow

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" Use :C to clear hlsearch
command! C nohlsearch

" use 'Y' to yank to the end of a line, instead of the whole line
noremap <silent> Y y$

nnoremap <leader>c :w<CR>:!rubber --pdf --warn all %<CR>

syntax on

set mouse=a

hi clear SignColumn

" Copy to X CLIPBOARD
map <leader>cc :w !xsel -i -p<CR>
" map <leader>cp :w !xsel -i -p<CR>
" map <leader>cs :w !xsel -i -s<CR>
" " Paste from X CLIPBOARD
" map <leader>pp :r!xsel -b<CR>
" map <leader>ps :r!xsel -s<CR>
" map <leader>pb :r!xsel -b<CR>


set completeopt-=preview
let g:ycm_filetype_blacklist = { 'tex': 1 }
let g:vimtex_view_method = 'zathura'

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



