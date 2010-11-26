syntax enable
set nocompatible
set bs=2
set tabstop=4
set shiftwidth=4
let &ai=0
let &expandtab=1
set nowrap
set hlsearch
set incsearch
set noscrollbind
set ruler
set mouse=a
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase 
set smartcase
set ruler
set backspace=indent,eol,start
syntax on
filetype on
filetype plugin on
filetype indent on
set hlsearch
set incsearch
nnoremap ' ` 
nnoremap ` ' 
set hidden
let mapleader = "," 
set history=1000
set wildmenu
set wildmode=list:longest
set ignorecase 
set smartcase
set title
set scrolloff=3
set nowrap
let g:debuggerPort = 6666
set number


colorscheme tiger256

let perl_fold = 1

nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
vnoremap <Space> zf

augroup filetypedetect
augroup END

if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif

  autocmd Filetype *
  \ if exists('&ofu') && &ofu == "" |
  \   source $VIMRUNTIME/autoload/syntaxcomplete.vim |
  \ endif
  filetype indent off
  filetype plugin indent off
endif

"if &term =~ "xterm"
"    :silent !echo -ne "\033]12;white\007"
"    let &t_SI = "\033]12;black\007"
"    let &t_EI = "\033]12;white\007"
"    autocmd VimLeave * :!echo -ne "\033]12;black\007"
"endif

