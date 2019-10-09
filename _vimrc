set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 상태바
Plugin 'vim-airline/vim-airline'

" 파일트리
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree On
map <Enter> <ESC>:NERDTree<CR>
