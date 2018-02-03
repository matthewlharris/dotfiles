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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-endwise'
Plugin 'cohama/lexima.vim'
Plugin 'alvan/vim-closetag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-rails'
Plugin 'mileszs/ack.vim'
Plugin 'ngmy/vim-rubocop'
Plugin 'pbrisbin/vim-mkdir'
   

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" SETTINGS
" ======================== 
syntax enable
set background=dark
colorscheme Base2Tone_EveningDark
set number
set noswapfile
set noshowmode
set smartindent
set smarttab
set expandtab
set showcmd
set tabstop=2
set shiftwidth=2
set statusline+=%F
set ignorecase
set splitbelow splitright
set colorcolumn=80
set clipboard=unnamed

let mapleader = " "
let g:ctrlp_map = '<c-p>'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
let g:ackprg = "ag --vimgrep"


" KEYMAPS
" ======================== 
" toggle nerd tree with ctrl+n
map <C-n> :NERDTreeToggle<CR>


" NORMAL MODE KEYMAPS
" ======================== 
nnoremap <Leader>a :Ack<Space>
nnoremap ; :


" INSERT MODE KEYMAPS
" ========================
" switch to normal mode with jk
inoremap jk <Space><Esc>x
