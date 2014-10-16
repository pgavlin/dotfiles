set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" ugh. tabs.
set expandtab
set ts=4
set shiftwidth=4

" Enable line numbers, disable line wrap by default
set number
set nowrap

" Move swap+recovery files to ~/_vim
set backupdir=~/_vim
set directory=~/_vim

" Disable auto indentation in as well as I can
filetype plugin indent off
set noautoindent
set nosmartindent
set nocindent
set formatoptions-=t
