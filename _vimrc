""" VundleVim
"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'yegappan/taglist'
"Plugin 'preservim/nerdtree'
"Plugin 'tpope/vim-surround'
"call vundle#end()
"filetype plugin indent on

""" neobundlel
if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
""NeoBundle 'Shougo/vimproc'
NeoBundle 'yegappan/taglist'
""NeoBundle 'preservim/nerdtree'
NeoBundle 'tpope/vim-surround'
NeoBundle 'vim-scripts/YankRing.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'dracula/vim'
call neobundle#end()
filetype plugin indent on


" Tags , 
set tags=/home/mak/py/tags

" Backup
set history=1000

" color column
set colorcolumn=80

" color scheme
colorscheme jellybeans
"set background=dark
syntax on

" relative number
set rnu
set nu

" Search
set incsearch
set hlsearch
set wrapscan

" tab indent
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" vimfiler
nnoremap <Space>e <C-w>v:VimFiler<CR>
" taglist
nnoremap <Space>m :Tlist<CR>
" Unite
let g:unite_enable_start_insert=1
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uc :<C-u>Unite -auto-preview colorscheme<CR>
let g:yankring_history_dir='$HOME/.vim'

" original
nnoremap <Space>n :noh<CR>
cnoremap <C-b> <left>
cnoremap <C-f> <right>
cnoremap <C-n> <down>
cnoremap <C-p> <up>
cnoremap <C-d> <delete>

nnoremap <Space>k <C-w>-
nnoremap <Space>j <C-w>+
nnoremap <Space>l <C-w>>
nnoremap <Space>h <C-w><

" move in insert mode
inoremap <C-j>  <down>
inoremap <C-k>  <up>
inoremap <C-h>  <left>
inoremap <C-l>  <right>

" brackets supplement
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

""*** NeoBundlet
"":NeoBundleInstall
"":NeoBundleUpdate vimfiler
"":NeoBundleClean vimfiler
""
""*** unite-colorschemea 
"":Unite -auto-preview colorscheme

