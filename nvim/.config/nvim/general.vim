syntax enable

set relativenumber
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set splitright
set smartindent
set linebreak
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.nvim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set encoding=utf-8
set mouse=n

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=140
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Remove annoying syntax error highlight on json comments
autocmd FileType json syntax match Comment +\/\/.\+$+

" Open help window always on the bottom
autocmd FileType help wincmd J

" Show invisible characters
set list
set listchars=tab:»·,eol:↲,nbsp:␣,extends:…,precedes:<,extends:>,trail:·
