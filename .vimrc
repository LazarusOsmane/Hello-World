execute pathogen#infect()


call plug#begin()
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
call plug#end()

colorscheme kuroi
set number
set hlsearch 
set smarttab
set tabstop=6
set autoindent
set syntax=enable 
set encoding=utf-8 
set mouse=a
set history=1000 
set termguicolors
set t_Co=256
set background=dark


let mapleader = "]"

inoremap <leader>x <esc>:wq<cr>
inoremap <leader>q <esc>:q<cr>
inoremap <leader>w <esc>:w<cr>i

inoremap <leader>c <esc>0v$yi
inoremap <leader>p <esc>pi
inoremap <leader>d <esc>ddi

inoremap <leader>a <esc>0i
inoremap <leader>1 <esc>$i

inoremap <leader>t <esc>:term<cr>
inoremap <leader>n <esc>:Norminette<cr>


noremap w :w<cr>
noremap q :w<cr>
noremap x :x<cr>
noremap t :term<cr>
noremap <F8> <s>y

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" " Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = 'norminette'

" " Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']
" 'libft', '../libft/include', '../../libft/include']

" " Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" " Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" " Enable error list
let g:syntastic_always_populate_loc_list = 1

" " Automatically open error list
let g:syntastic_auto_loc_list = 1

" " Skip check when closing
let g:syntastic_check_on_wq = 0 
