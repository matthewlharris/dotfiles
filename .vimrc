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
Plugin 'zeekay/vim-beautify'
Plugin 'ggreer/the_silver_searcher'
   

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

let g:ctrlp_map = '<c-p>'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" KEYMAPS
" ======================== 
" toggle nerd tree with ctrl+n
map <C-n> :NERDTreeToggle<CR>


" NORMAL MODE KEYMAPS
" ======================== 


" INSERT MODE KEYMAPS
" ========================
" autocomplete curly braces with newline and tabbed cursor placement
inoremap {<cr> {<cr>}<c-o><s-o>
" switch to normal mode with jk
inoremap jk <Space><Esc>x
