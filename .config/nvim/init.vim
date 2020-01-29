call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'victorze/foo'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
Plug 'mlaursen/vim-react-snippets'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jreybert/vimagit'
Plug 'vim-scripts/ctrlp.vim'
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug '~/.vim/plugin/NeonWave.vim'

call plug#end()

source ~/.vimrc

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascriptreact': ['eslint'],
\}

let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'javascriptreact': ['eslint'],
  \ }

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = '0'
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1

:syntax on
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
