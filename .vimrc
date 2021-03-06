set nomodeline
set nocompatible
set foldmethod=indent
set foldlevelstart=99
set undolevels=1000
set encoding=UTF-8
set history=50
set ruler
set number
set backspace=indent,eol,start
set cursorline
set cursorcolumn

" Tabs and no annoying error pings
set showmatch
set ignorecase
set incsearch
set vb t_vb=
set hlsearch

" Set tab and indentation behavior
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType xml setlocal tabstop=2 softtabstop=2 shiftwidth=2

set background=dark
set termguicolors
colorscheme monokai-phoenix

" Custom Commands
let mapleader = ","
nmap <Leader>w <c-w>w
nmap <Leader>j <c-w>j
nmap <Leader>k <c-w>k
nmap <Leader>h <c-w>h
nmap <Leader>l <c-w>l
nmap <Leader>t :tabn <Enter>
nmap <Leader>T :tabp <Enter>

nmap <Leader>> :vertical resize +10 <Enter>
nmap <Leader>< :vertical resize -10 <Enter>
nmap <Leader>0 :vertical resize 30 <Enter>
nmap <Leader>+ :resize +5 <Enter>
nmap <Leader>- :resize -5 <Enter>
nmap <Leader>\ :NERDTree <Enter>

nmap <Leader>r :SyntasticReset <Enter>

" End word wrapping
set nowrap
set nolinebreak

" Nerdcommenter
filetype plugin on

" Nerdtree
let NERDTreeAutoDeleteBuffer = 1

" Indent-Guides
let g:indent_guides_enable_on_vim_startup = 1

" Airline and Syntastic
let g:airline#extensions#syntastic#enabled = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['pylint']

syntax on
