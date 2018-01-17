set nocompatible              " be iMproved, required
filetype off 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'chr4/nginx.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'vimcn/vimcdoc'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-jp/ctags'
Plugin 'vim-scripts/taglist.vim'
Bundle 'Valloric/YouCompleteMe'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
syntax on
set nu
set wrap
set ts=4
map gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
map to :TlistOpen<cr>

" zhouquan's private map key for daily use
:colorscheme koehler 
let mapleader=","
nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>lv :source $MYVIMRC<cr>
nnoremap <leader>g :grep '<cword>' %<cr> :copen<cr>

augroup devauto
autocmd!
autocmd BufWritePost *.go !gofmt -l -w %; go run %
autocmd BufWritePost *.py !python3 %
autocmd FileType c nnoremap <buffer> <leader>/ I//<esc>
autocmd FileType python nnoremap <buffer> <leader>/ I#<esc>
augroup end


set hlsearch incsearch
set statusline=%f\ -\ %y\ -\ numoflines:\ %L
set paste
