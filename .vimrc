set nocompatible

" Basics (shamelsessly lifted from vimrc_example.vim)
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set history=50                 " keep 50 lines of command history
set ruler                      " show cursor position
set showcmd                    " display incomplete commands
set incsearch                  " do incremental searching
set number                     " enable line numbers
set nowrap                     " disable line wrapping
set wildmode=longest,full      " change the wildcard mode

" Enable swap and recovery files in ~/.vim
set backup
if has("unix")
	set backupdir=~/.vim
	set directory=~/.vim
else
	set backupdir=~/_vim
	set directory=~/_vim
endif

" Autocmds
if has("autocmd")
    " Enable filetype detection
    filetype plugin on

    " Jump to last known cursor position when editing a file.
    " Shamelessly lifted from vimrc_example.vim.
    autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \     exe "normal! g`\"" |
        \ endif
endif

" Syntax highlighting
syntax on

" Tabs.
set noexpandtab
set ts=4
set shiftwidth=4

" Disable auto indentation as well as I can
filetype indent off
set noautoindent
set nosmartindent
set nocindent
set formatoptions-=t
set tw=0

" Allow per-directory .vimrc files safely
set exrc
set secure

" Ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode=''
let g:ctrlp_prompt_mappings = {
    \ 'PrtExit()': ['<c-c>', '<c-g>'],
    \ }

" Colorscheme
colorscheme molokai
