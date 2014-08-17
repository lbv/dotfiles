set nocompatible
filetype off


""
"" Global variables/options
""

set autochdir
set autoindent
set background=dark
set cindent
set cinkeys=0{,0},:,!<Tab>,!^F
set cinoptions=:0,(0,W4
set copyindent
set dir=~/.tmp,/tmp
set hidden
set hlsearch
set incsearch
set laststatus=2
set listchars=tab:>.,eol:¬
set mouse=a
set noexpandtab
set nohidden
set noshowmode
set numberwidth=4
set preserveindent
set shiftwidth=4
set showcmd
set smarttab
set tabstop=4
set textwidth=76
set winminheight=0

let g:tex_flavor='latex'
let g:localvimrc_ask = 0

let g:pandoc_no_empty_implicits = 1
let g:pandoc_no_spans = 1
let g:pandoc_use_hard_wraps = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_y = '%{&fenc}%{strlen(&fenc) ? "," : ""}%{&ff}'
let g:airline_mode_map = {
	\'__' : '-',
	\'n'  : 'N',
	\'i'  : 'I',
	\'R'  : 'R',
	\'c'  : 'C',
	\'v'  : 'V',
	\'V'  : 'V',
	\'^V' : 'V',
	\'s'  : 'S',
	\'S'  : 'S',
	\'^S' : 'S'
\}
let g:airline#extensions#default#section_truncate_width = {
	\'b': 70,
	\'y': 70
\}

if &shell =~ "/fish"
	set shell=/bin/sh
endif


"
" Vundle
"
set runtimepath+=$HOME/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'aklt/plantuml-syntax'
Bundle 'baskerville/bubblegum'
Bundle 'bitc/vim-bad-whitespace'
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'dag/vim-fish'
Bundle 'dpwright/vim-tup'
Bundle 'groenewege/vim-less'
Bundle 'honza/vim-snippets'
Bundle 'localvimrc'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'vim-coffee-script'
Bundle 'vim-pandoc'
Bundle 'UltiSnips'

Bundle 'file:///home/leonardo/projects/vim-phi-bundle'


"
" More options
"

filetype plugin indent on
syntax on


""
"" Color schemes
""

colorscheme bubblegum

" Other good ones
"colorscheme xoria256
"colorscheme wombat256mod
"colorscheme desert256
"colorscheme anotherdark
"colorscheme camo
"colorscheme chocolateliquor
"colorscheme desert
"colorscheme guardian
"colorscheme zenburn



""
"" Keyboard mappings
""

let mapleader = ","
let maplocalleader = "-"

" Insert mode mappings
inoremap jk <esc>
inoremap <c-h> <left>
inoremap <c-l> <right>
inoremap <c-j> <down>
inoremap <c-k> <up>

" F2: Close current buffer
" F4: Toggle numbering
" F5: Toggle column bar
" F6: Toggle identify spaces
" F7: Toggle NERDTree
noremap <F2> :confirm bdel<CR>
noremap <F4> :set number!<CR>
noremap <F5> :let &colorcolumn=(&cc == '' ? '+4' : '')<CR>
noremap <F6> :set list!<CR>
noremap <F7> :NERDTreeToggle<CR>

" Folding
noremap <C-Up> zc
noremap <C-Down> zo
noremap <C-S-Right> zR
noremap <C-S-Left> zM

" Toggle highliting of search matches
nnoremap <silent> <C-H> :set hlsearch!<CR>

" Moving around buffers
noremap <Leader>l :bnext!<CR>
noremap <Leader>h :bprevious!<CR>

" View/edit vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

" Formatting
nnoremap Q gq
