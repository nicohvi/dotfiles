".vimrc - so it begins
set encoding=utf-8

set number
set wrap " wraps the text if a line gets too long
set vb
set backspace=2 "enable backspace
set ts=2
set shiftwidth=2
set expandtab 
let base16colorspace=256

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugins

" ctrlp -> fuzzy find
Plugin 'ctrlpvim/ctrlp.vim'

" YouCompleteMe -> auto-completion
"Plugin 'Valloric/YouCompleteMe'

" NerdTree -> directory hopping
Plugin 'scrooloose/nerdtree'

" Languages
Plugin 'lambdatoast/elm.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'slim-template/vim-slim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'wavded/vim-stylus'

" Commenting
Plugin 'scrooloose/nerdcommenter'

call vundle#end() 

" material design, brudda
color base16-material-dark

" global maps
noremap - :silent! m+<CR>==
noremap _ :silent! :m-2<CR>==

" insert mode maps
inoremap <c-u> <esc>viwUA

" normal mode maps
nnoremap <c-u> viwU<esc>

" ignore folder for ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](node_modules|deps|_build)$'
\ }

" leaders
let mapleader=","

let g:enable_bold_font = 1
filetype plugin on

syntax on                         " syntax highlighting is sometimes helpful
set noswapfile                    " swap files are ugly as sin

" silver searcher
if executable('ag')
 " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nmap <leader>n :NERDTreeFind<CR>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" ------------- keymaps ---------------
noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>sv :so $MYVIMRC<cr>
let g:ctrlp_map = '<leader>f' 
map <leader>7 <plug>NERDCommenterToggle
