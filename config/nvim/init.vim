" cannot code without the following
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=UTF-8
syntax on
set number
set tabstop=4
set autoindent

" only vim can do this
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline
set cursorcolumn

" color
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set termguicolors

" open terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :below 20sp term://$SHELL<cr>i
" hit <Escape> key to exit from terminal mode
:tnoremap <Esc> <C-\><C-n>

" use current file directory as a start to find file to edit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
" credits to:
" https://stackoverflow.com/a/1708936

" it is ok to wrap lines, just use gj or gk to move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap

" cycle buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap gb :bnext<CR>

" load plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/plug-config/coc.vim
