" pathogen
execute pathogen#infect()

" colors
set termguicolors
set term=xterm-256color
set t_Co=256
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set background=dark
colorscheme vim-material

" syntax things
syntax on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" linting
let g:syntastic_python_checkers = []
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_csslint_options = ".--warnings=none"

let g:syntastic_javascript_eslint_exe = 'eslint'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" tabs and spaces
set noexpandtab
set autoindent
set preserveindent
set softtabstop=0
set shiftwidth=2
set tabstop=2
set smarttab 

" UI stuff
set number
set cursorline
set wildmenu
set lazyredraw

" search
nnoremap <leader><space> :nohlsearch<CR>

" fold
set foldenable
set foldlevel=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za

"omni
filetype on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

" NERDTree
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



