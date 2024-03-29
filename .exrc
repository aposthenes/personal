"Last modified: Spring 2010
map @    :!clear;python3 %
map #    :!clear;python3 % 

set background=dark

syntax enable
set nocompatible        " use vim extensions

" Bells
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell

" Editing info
"set number              "[same as nu] show line numbers
set ruler               "[same as ru] show cursor position
set showmode            "[same as smd] show when in insert mode

" Search
set hlsearch            " highlight searches
"set incsearch           " do incremental searching

" Auxilary files
set nobackup            " do not keep a backup file (ending in ~)
set noswapfile          " do not write a swap file

" Smart editing
set showmatch           "[same as sm] highlight matching (), {}, etc.
"set nowrap              " do not wrap lines

" Tabs and Indenting
set autoindent          "[same as ai] always set autoindenting on
set shiftwidth=4        "[same as sw] number of spaces to (auto)indent
set tabstop=4           "[same as ts] number of spaces per tab
set expandtab           "[same as et] use spaces instead of a tab
set softtabstop=4       "[same as sts] number of spaces to use instead of a tab
set smarttab            "[same as sta] <BS> deletes shiftwidth spaces from the start of a line

" Syntax highlighting
syntax enable 
