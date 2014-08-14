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
set numberwidth=4
set preserveindent
set shiftwidth=4
set showcmd
set smarttab
set tabstop=4
set textwidth=76
set wmh=0

let g:tex_flavor='latex'
let g:localvimrc_ask = 0

let g:pandoc_no_empty_implicits = 1
let g:pandoc_no_spans = 1
let g:pandoc_use_hard_wraps = 1

let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline#extensions#default#section_truncate_width = { 'b': 70, 'y': 70, }

"
" Vundle
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'aklt/plantuml-syntax'
Bundle 'baskerville/bubblegum'
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
Bundle 'vim-scripts/SyntaxRange'
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

" The same as cSpaceError, but defined here to be used everywhere
highlight def link GenericSpaceError Error
au Syntax * syntax match GenericSpaceError display excludenl containedin=.* "\s\+$"
au Syntax * syntax match GenericSpaceError display containedin=.* " \+\t"me=e-1


""
"" Term-related config
""

if &term =~ "screen"
    exec "set <S-Left>=\e[1;2D"
    exec "set <S-Right>=\e[1;2C"
endif


""
"" Keyboard mappings
""

let mapleader = ","

imap <C-BS> <C-W>

" Close current buffer
map <F2> :confirm bdel<CR>

map <F4> :set number!<CR>
map <F5> :let &cc=(&cc == '' ? '+4' : '')<CR>
map <F6> :set list!<CR>

map <F7> :NERDTreeToggle<CR>

" Toggle Taglist
map <F8> :TlistToggle<CR>

" Folding
map <C-Up> zc
map <C-Down> zo
map <C-S-Right> zR
map <C-S-Left> zM

" Toggle highliting of search matches
nmap <silent> <C-H> :let &hls=!&hls<CR>

" Moving around buffers
map <S-Right> :bn!<CR>
map <S-Left> :bp!<CR>

" View/edit vimrc
nmap <Leader>s :source ~/.vimrc<CR>
nmap <Leader>v :e ~/.vimrc

nnoremap Q gq
