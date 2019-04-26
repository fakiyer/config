""""""""""""""""""""""""""""""
" Display
""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized8
set termguicolors

""""""""""""""""""""""""""""""
" Option
""""""""""""""""""""""""""""""
set noshowmode
set title
set ruler
set list " show eol,tab,etc...
set listchars=tab:>-,trail:-,extends:>,precedes:< " eol:$
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" edit
" ----------------------
set autoindent
set smartindent
set expandtab
set smarttab
set tabstop=2 shiftwidth=2 softtabstop=0
set showmatch " show mactch brace
set wildmenu
set clipboard=unnamed " share OS clipboard
set autoread
set hidden
set showcmd
set backspace=indent,eol,start
set hlsearch
set number

highlight link ZenkakuSpace Error
match ZenkakuSpace /<81>@/

" search
" ----------------------
set incsearch
set ignorecase
set smartcase
set hlsearch
set nowrapscan

" no bell
" ----------------------
set visualbell
set t_vb=

" for coc.nvim
" https://github.com/neoclide/coc.nvim#example-vim-configuration
" ----------------------
set nobackup
set nowritebackup
" set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
