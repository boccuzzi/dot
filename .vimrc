set nocompatible
set nobackup
set noswapfile
set t_Co=256
set number
set wildmenu
set wildignore+=*.o,.git
set shortmess+=I

set runtimepath+=~/.vim/plugins/ctrlp
set runtimepath+=~/.vim/plugins/nerdtree
set runtimepath+=~/.vim/plugins/lightline
set runtimepath+=~/.vim/plugins/fswitch

set laststatus=2
set noshowmode

" open quickfix window automatically ...
augroup qf
    autocmd!
    autocmd QuickFixCmdPost [^l]* cwindow
    autocmd QuickFixCmdPost l*    lwindow
augroup END
" but dont jump to the first entry ...
cabbrev grep grep!
cabbrev make make!
set grepprg=grep\ -niIR\ --exclude=tags\ $*\ /dev/null
"set grepprg=grep\ -niIR\ --exclude-dir=.vim\ --exclude-dir=target\ --exclude-dir=tmp\ --exclude=\"*.min.js\"\ --exclude=\"*.log\"\  --exclude=tags\ $*\ /dev/null

" set the path for 'find' from the pwd toward leafs
set path=**

" observe the significant white space after '\' - i.e. the value is '\ '
set fillchars=vert:\ 
"set fillchars=vert:*

set tags=./tags,tags;

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

set ignorecase
set smartcase
set hlsearch
set incsearch 

" removes any search highlighting
nnoremap <silent> _ :nohl<CR><C-l>

set tabstop=3
set softtabstop=3
set expandtab

set smarttab
set shiftwidth=3

set smartindent

" set showmatch

" leader is comma
let mapleader="\\"

:map <silent> <leader>n :NERDTreeToggle<CR>

:map <silent> <F1> :help <CR>
:map <silent> <F2> :copen <CR>
set pastetoggle=<F3>

" FSwitch config and mappings...
let g:fsnonewfiles=1
" Switch to the file and ... 
" load it into the current window 
nmap <silent> <Leader>of :FSHere<cr>
" load it into the window on the right
nmap <silent> <Leader>ol :FSRight<cr>
" load it into a new window split on the right
nmap <silent> <Leader>oL :FSSplitRight<cr>
" load it into the window on the left
nmap <silent> <Leader>oh :FSLeft<cr>
" load it into a new window split on the left
nmap <silent> <Leader>oH :FSSplitLeft<cr>
" load it into the window above
nmap <silent> <Leader>ok :FSAbove<cr>
" load it into a new window split above
nmap <silent> <Leader>oK :FSSplitAbove<cr>
" load it into the window below
nmap <silent> <Leader>oj :FSBelow<cr>
" load it into a new window split below
nmap <silent> <Leader>oJ :FSSplitBelow<cr>

" ncurses style navigation on the command-line
" start of line
:cnoremap <C-A> <Home>
" back one character
:cnoremap <C-B> <Left>
" delete character under cursor
:cnoremap <C-D> <Del>
" end of line
:cnoremap <C-E> <End>
" forward one character
:cnoremap <C-F> <Right>
" recall newer command-line
:cnoremap <C-N> <Down>
" recall previous (older) command-line
:cnoremap <C-P> <Up>
