" vim-plug start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim/plugged')

" syntax highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'

" files hierarchy tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree' 
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" toggle NERDTree with ctrl-e, similar to vscode
nmap <C-e> :NERDTreeToggle<CR>
" exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" editorconfig support
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'editorconfig/editorconfig-vim'

" git integration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" lean & mean status/tabline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline#extensions#tabline#enabled = 1

" awesome completion tool
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" use <Tab> key to trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" coc config
let g:coc_global_extensions = [
  \ 'coc-json', 
  \ 'coc-marketplace', 
  \ 'coc-pairs',
  \ 'coc-pyright', 
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-vimlsp',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ ]

" insert or delete parenthesis in pair
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-scripts/auto-pairs-gentle'

" toggle comments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use `gcc` to comment out a line (takes a count),
" `gc` in visual mode to comment out the selection, and much more...
Plug 'tpope/vim-commentary'

" colorscheme: bubblegum
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'baskerville/bubblegum'

" javascript syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

"" Asynchronous Lint Engine (ALE)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'dense-analysis/ale'

let g:ale_fixers = {'python': ['black', 'isort'],'xml':['xmllint'],'yaml':['yamlfix'],'yml':['yamlfix'],'md':['pandoc'],'mdx':['pandoc']}
let g:ale_linters = {'javascript': ['eslint'],'javascriptreact': ['eslint'],'typescript': ['eslint'],'typescriptreact': ['eslint'],'python': ['mypy', 'flake8', 'pylint'],'json':['prettier'],'html':['prettier'],'css':['prettier'],'xml':['xmllint'],'yaml':['yamlfix'],'yml':['yamlfix'],'md':['pandoc'],'mdx':['pandoc']}

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

let g:ale_fix_on_save = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_python_flake8_options = '--max-line-length 88 --extend-ignore=E203'

" post install (yarn install | npm install) then load plugin only for editing supported files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

let g:prettier#config#tab_width = 4
let g:prettier#config#single_quote = 'true'
let g:prettier#config#semi = 'false'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#config_precedence = 'cli-override'

" manipulating and moving between function arguments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'PeterRincker/vim-argumentative'

" tmux
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'christoomey/vim-tmux-navigator'

" surroundings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-surround'

" fuzzy finder
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" vim-plug end, add plugins to &runtimepath
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

" activate bubblegum colorscheme
colorscheme bubblegum-256-dark
let g:airline_theme='bubblegum'

