set nocompatible
filetype off


"""
""" Global options
"""

set autochdir
set autoindent
set background=dark
set cindent
set cinkeys=0{,0},:,!<Tab>,!^F
set cinoptions=:0,(0,W4
set copyindent
set dir=~/.cache/vim,/tmp
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

if &shell =~ "/fish"
	set shell=/bin/sh
endif


"""
""" Bundle management, through vundle
"""

" Basics
set runtimepath+=$HOME/.vim/bundle/Vundle.vim/
call vundle#rc()
Plugin 'gmarik/Vundle.vim'

" List of plugins follows..

" Code analysis in real-time
Plugin 'scrooloose/syntastic'

" Color schemes
Plugin 'baskerville/bubblegum'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/wombat256.vim'

" :SaveSession and :OpenSession
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

" Snippets
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" Statusline
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'

" Syntax/Format integration
Plugin 'aklt/plantuml-syntax'
Plugin 'dag/vim-fish'
Plugin 'dpwright/vim-tup'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" Unite - browsing stuff inside vim with an uniform interface
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tsukkee/unite-help'

" Extra utilities
Plugin 'embear/vim-localvimrc'

" Post-vundle-init options
filetype plugin indent on
syntax on


"""
""" Color schemes
"""

colorscheme jellybeans

" Other good ones

"colorscheme bubblegum
"colorscheme wombat256mod
"colorscheme xoria256


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

" F-keys
"
"   F2: Close current buffer
"   F3: Toggle file explorer
"   F4: Toggle numbering
"   F5: Toggle column bar
"   F6: Toggle whitespace visibility
noremap <F2> :confirm bdel<CR>
noremap <F3> :VimFilerExplorer<CR>
noremap <F4> :set number!<CR>
noremap <F5> :let &colorcolumn=(&cc == '' ? '+4' : '')<CR>
noremap <F6> :set list!<CR>

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


"""
""" Source config files with plugin-specific customizations
"""

let s:p_settings="$HOME/.vim/plugin_settings/*.vim"
execute join(map(split(glob(s:p_settings)), '"source " . v:val'), "\n")
