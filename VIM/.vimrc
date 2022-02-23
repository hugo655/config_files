"Author: Hugo Gayoso

"Defining filetypes as the code opens 
autocmd BufNewFile,BufRead *.v,*.sv,*.svh set syntax=verilog_systemverilog
autocmd BufNewFile,BufRead *.md set filetype=markdown

"Setting functions
set spell
set incsearch
set hlsearch
set mouse=a
set ts=2 sw=2
set number

"Setting ColorSchemes
hi SpellBad cterm=underline ctermfg=red
hi Search ctermbg=yellow
hi Search ctermfg=Red
hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan
