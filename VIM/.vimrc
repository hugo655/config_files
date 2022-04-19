"Author: Hugo Gayoso

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
