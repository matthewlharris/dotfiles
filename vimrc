set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" SETTINGS
set number
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set statusline+=%F
set ignorecase

" KEYMAPS
" toggle nerd tree with ctrl+n
map <C-n> :NERDTreeToggle<CR>


" NORMAL MODE KEYMAPS


" INSERT MODE KEYMAPS
" autocomplete curly braces with newline and tabbed cursor placement
inoremap {<cr> {<cr>}<c-o><s-o>
