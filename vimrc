set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'lervag/vimtex'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()
filetype plugin indent on

set encoding=utf-8
set exrc
set secure
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set si "smart indent
set nowrap
set hlsearch
set ruler
set number
set colorcolumn=110
highlight ColorColumn ctermbg=blue
syntax on

" tags
set tags=./tags;/

set showmatch
set comments=s1:/*,mb:\ *,elx:\ */
"
let $path.="src/include,/usr/include/AL,"
set makeprg=make\ -C\ ../build\ -j9
nnoremap <F4> :make!<cr>

let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <Leader>d :YcmCompleter GoToDefinition<CR>
nnoremap <C-.> :YcmCompleter FixIt<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:nerdtree_tabs_open_on_console_startup=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <Leader>n <plug>NERDTreeTabsToggle<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
