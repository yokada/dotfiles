set nocompatible              " be iMproved
filetype off                  " required!

"""""""""""""""""""""""" User settings
" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

""""""""""""""""" Neobundle settings
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'
NeoBundle 'nerdtree'
NeoBundle 'fatih/vim-go'

if has('vim_starting')
    call neobundle#end()
endif

""""""""""""""""" Vundle Plugin settings
"set rtp+=~/.vim/bundle/vundle/
"call vundle#end()

" let Vundle manage Vundle
" required! 
"Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
" non-GitHub repos
"Bundle 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

"Bundle 'Shougo/unite.vim'
"Bundle 'Shougo/vimproc'

filetype plugin indent on     " required!
filetype indent on
syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set number
set softtabstop=4


