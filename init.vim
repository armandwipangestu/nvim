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
Plug 'nvim-treesitter/nvim-treesitter' " For syntax highlighting
Plug 'jiangmiao/auto-pairs' " For insert or delete brackets, parens, quotes in pair
Plug 'airblade/vim-gitgutter' " Git Diff markers
Plug 'wojciechkepka/vim-github-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/loremipsum'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

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

":colorscheme ayu
":colorscheme ghdark
"let g:gh_color = "soft"
:set termguicolors
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
let g:material_theme_style = 'ocean'
:colorscheme material

let g:NERDTreeDirArrowExpandable=" >"
let g:NERDTreeDirArrowCollapsible=" ⌄"

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" airline symbols
":AirlineTheme ghdark

let g:airline_theme = 'zenburn'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"let g:airline#extensions#tabline#buf_label_first = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#show_close_button = 1
let g:airline#extensions#tabline#close_symbol = 'X'
let g:airline#extensions#tabline#exclude_preview = 1
let g:airline#extensions#tabline#show_tab_count = 2
" let g:airline#extensions#tabline#show_tab_type = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
" let g:airline#extensions#tabline#ignore_bufadd_pat = '\c\tagbar|nerd_tree'

let g:airline#extension#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
autocmd TermOpen * setlocal nonumber norelativenumber
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
luafile ~/.config/nvim/nvim_lua.lua
