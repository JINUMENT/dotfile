"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" init command
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" 1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 2. PluginInstall


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" Plugin setting
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
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


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" Option setting
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" swapfile 생성 안함
set noswapfile
" backup파일 생성 안함
set nobackup
" 문법 색깔 표시
set syntax
" line number 표시
set nu
" 현재 커서의 라인 표시
set cursorline
" 검색 문자 하이라이트
set hlsearch
" 검색시 대소문자 구문 안함
set ic
" line number 색깔 변경
highlight LineNr ctermfg=darkyellow

set background=dark

"""""""""""""""""""""""""""""""""""""""""""
" setting in each file type
" ts : タブが対応する空白の数
" sts : タブやバックスペースの使用等の編集操作をするときに、タブが対応する空白の数
" sw : インデントの各段階に使われる空白の数
" et : タブにスペースを使う
"""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  filetype plugin on
  filetype indent on

  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby.rspec setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
endif

"==============================

"""""""""""""""""""""""""""""""""""""""""""
" 自動的に閉じ括弧を入力
"""""""""""""""""""""""""""""""""""""""""""
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
"""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" Shortcut setting
"""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""
" NERDTree On
map <Enter> <ESC>:NERDTree<CR>
