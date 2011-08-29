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
set number
set autoindent
set smarttab

set ai "Auto indent
set si "Smart indent

set nobackup
set nowb
set noswapfile

syntax on
set t_Co=256
colorscheme wombat256
set mouse=a
augroup filetypedetect
augroup END

autocmd FileType make setlocal noexpandtab

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

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
