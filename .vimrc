execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme corporation
set nu

execute pathogen#infect()
syntax on
set nu
filetype plugin indent on
colorscheme corporation
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4
imap jj <Esc>

" YCM settings
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
