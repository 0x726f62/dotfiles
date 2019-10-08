set nocompatible
set encoding=utf8

"turn off backup files
set nobackup
set nowb
set noswapfile

set cmdheight=2

"turn off bell
set noerrorbells
set novisualbell
set t_vb=
set tm=500

filetype indent plugin on
syntax on

"search
set hlsearch
set incsearch
set ignorecase

"cmds
set wildmenu
set showcmd

"mouse
set mouse=a

"for carret matching
set showmatch

nnoremap <F3> :set hlsearch!<CR>
