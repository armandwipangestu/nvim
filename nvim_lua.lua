local cmd = vim.cmd

-- Return to last edit line position when opening files
cmd [[au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]];

-- Set nowrap text when opening files
cmd [[set nowrap]];

-- mapping

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- <C-l> == CTRL + l
map("n", "<C-r>", ":vnew +terminal | setlocal nobuflisted <CR>", opt) -- term over right
-- <C-x> == CTRL + x
map("n", "<C-x>", ":botright 10new +terminal | setlocal nobuflisted <CR>", opt) --  term bottom
-- <M-t> == ALT + t
map("n", "<M-t>", ":terminal <CR>", opt) -- term buffer

-- Wrap Text 
-- <C-w> == CTRL + w
map("n", "<C-w>", [[<esc>:set wrap<cr>]], opt)
map("i", "<C-w>", [[<esc>:set wrap<cr>]], opt)
map("v", "<C-w>", [[<esc>:set wrap<cr>]], opt)

-- No Wrap Text 
-- <C-M-w> == CTRL + ALT + w
map("n", "<C-M-w>", [[<esc>:set nowrap<cr>]], opt)
map("i", "<C-M-w>", [[<esc>:set nowrap<cr>]], opt)
map("v", "<C-M-w>", [[<esc>:set nowrap<cr>]], opt)

-- move cursor to start (home) text on normal, insert and visual mode. Example: n... (CTRL + A) 
map("n", "<C-a>", [[<home>]], opt)
map("i", "<C-a>", [[<home>]], opt)
map("v", "<C-a>", [[<home>]], opt)

-- move cursor to end text on normal, insert and visual mode. Example: n... (CTRL + D) 
map("n", "<C-d>", [[<end>]], opt)
map("i", "<C-d>", [[<end>]], opt)
map("v", "<C-d>", [[<end>]], opt)

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  -- ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

