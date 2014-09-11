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
set cursorline
set dir=~/.cache/vim,/tmp
set foldlevelstart=5
set foldmethod=syntax
set hlsearch
set incsearch
set laststatus=2
set list
set listchars=tab:→\ ,trail:×
set mouse=a
set numberwidth=4
set preserveindent
set showcmd
set smarttab
set textwidth=76
set ttimeout
set winminheight=0

set noshowmode
set notimeout

" Sorry my fish.. you don't play well with vundle..
if &shell =~ "/fish"
	set shell=/bin/sh
endif

" Enable side bars only if there is enough room
if &columns > 79
	set colorcolumn=+4
	if &columns > 83
		set number
		if &columns > 84 | set foldcolumn=1 | endif
	endif
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

" Coding style sanity
Plugin 'editorconfig/editorconfig-vim'

" Color schemes
Plugin 'baskerville/bubblegum'
Plugin 'jnurmine/Zenburn'
Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-scripts/wombat256.vim'

" Language specific syntax and format integration
Plugin 'aklt/plantuml-syntax'
Plugin 'dag/vim-fish'
Plugin 'digitaltoad/vim-jade'
Plugin 'dpwright/vim-tup'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

" Snippets
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'

" Statusline
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'

" Unite - browsing stuff inside vim with an uniform interface
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'tsukkee/unite-help'

" Post-vundle-init options
filetype plugin indent on
syntax on


"""
""" Color schemes
"""

colorscheme bubblegum

" Other good ones

"colorscheme jellybeans
"colorscheme wombat256mod
"colorscheme zenburn

" A subtle color for whitespaces
highlight SpecialKey ctermfg=238


""
"" Keyboard mappings
""

let mapleader = "\<space>"
let maplocalleader = "-"

" F-keys
"
"   F2: Close current buffer
"   F3: Toggle file explorer
"   F4: Toggle numbering/fold column
"   F5: Toggle column bar
"   F6: Toggle whitespace visibility
noremap <F2> :confirm bdel<CR>
noremap <F3> :VimFilerExplorer<CR>
noremap <F4> :set number!<CR>:let &foldcolumn=&fdc==0?1:0<CR>
noremap <F5> :let &colorcolumn=(&cc == '' ? '+4' : '')<CR>
noremap <F6> :set list!<CR>

" Turn off highliting until next search
nnoremap <silent><CR> :noh<CR>

" Moving around buffers
noremap <Leader>l :bnext!<CR>
noremap <Leader>h :bprevious!<CR>

" View/edit vimrc
nnoremap <Leader>sv :source $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

" Formatting
nnoremap Q gq


"""
""" Plugin-specific customizations
"""

let s:p_settings="$HOME/.vim/plugin_settings/*.vim"
execute join(map(split(glob(s:p_settings)), '"source " . v:val'), "\n")
