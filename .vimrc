noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <Tab> <Esc>

set clipboard=unnamed
set termguicolors

" for dark version
set background=dark

colorscheme NeonWave

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

map <C-n> :NERDTreeToggle<CR>

set foldmethod=syntax
set foldlevelstart=20


" add keybinding to handle copying to global keyboard
:vmap '' :w !pbcopy<CR><CR>


let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
