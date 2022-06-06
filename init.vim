:set number
":set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status Bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'nvim-treesitter/nvim-treesitter'

set encoding=UTF-8

call plug#end()

nnoremap <C-a> <home>
nnoremap <C-d> <end>

nnoremap <M-z> :set wrap<CR>
nnoremap <C-M-z> :set nowrap<CR>

nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

nnoremap <C-M-s> :wq!<CR>
nnoremap <C-M-q> :q!<cr>

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

":set completeopt-=preview " For No Previews

:colorscheme ayu
:set termguicolors

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
luafile ~/.config/nvim/nvim_lua.lua
