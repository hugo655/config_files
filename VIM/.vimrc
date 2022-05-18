"Author: Hugo Gayoso

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THE FOLLOWING LINES ARE JUST FOR INSTALLING VUNDLE PACKAGE MANANGER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mechatroner/rainbow_csv'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'file:///home/gmarik/path/to/plugin'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""
"END OF VUNDLE PACKAGE MANAGER SETUP
""""""""""""""""""""""""""""""""""""


"Mappings
noremap! <C-h> <C-w>
inoremap <F3> <C-O>:w<CR>
noremap <F3> <C-O>:w<CR>

"Maps J to Highlight current word with no line jump
map J #*

colorscheme synthwave

"Setting functions
set spell
set incsearch
set hlsearch
set mouse=a
set number
set tabpagemax=100
set nowrap
set ts=2 sw=2 expandtab
set fileencodings=ucs-bom,utf8,latin1

"Defining filetypes as the code opens 
autocmd BufNewFile,BufRead *.v,*.sv,*.svh set syntax=verilog_systemverilog
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead Makefile setlocal noexpandtab

"Setting ColorSchemes
hi cursorColor cterm=None ctermbg=darkgrey ctermfg=cyan
hi SpellBad cterm=underline ctermfg=red
hi Search ctermbg=yellow
hi Search ctermfg=Red
hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan

" The following two lines handles the cursor - not useful in WSL
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[1 q"
