" copy to clipboard with ctrl-c ctrl-v
set clipboard^=unnamed,unnamedplus

" maximum commands in vim command history
set history=1000

" automatically set to read mode when a file is changed from elsewhere
set autoread

" automatically write to the file when another file is open with vim
set autowrite

" use mouse to position cursor and drag in visual mode
set mouse=a

" show cursor positions
set ruler

" highlight search results
set hlsearch

" show matches while typing in search
set incsearch

" show matching bracket when cursor in on one
set showmatch

" show line numbers
set number

" syntax highlighting
syntax on

" themes
colorscheme desert
set background=dark

" use utf8 as a default encoding
set encoding=utf8

" use c style auto indent
set cindent

" how many spaces in auto indent
set shiftwidth=2

" how many spaces when tab is entered
set tabstop=2

" enter spaces with tab
" set expandtab

" #if has to be first on the line
set smartindent

" do not wrap lines
set nowrap

" fold by indent or syntax (zo/zc command)
set foldmethod=indent
set foldnestmax=1
