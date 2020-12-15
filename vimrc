set nocompatible " get rid of Vi compatibility mode. this makes it so arrow keys don't insert letters instead. must be the first line

" colors and syntax highlighting
set t_Co=256 " enable 256-color mode.
syntax on " if this isn't available, make sure vim is installed not vim-tiny

" misc settings
set expandtab " use spaces instead of tabs
set backspace=indent,eol,start " make backspaces work as expected
set number " show line numbers
