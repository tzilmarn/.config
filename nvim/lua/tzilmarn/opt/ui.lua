-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
vim.opt.termguicolors = true

-- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- disable line wrapping
vim.opt.wrap = false

-- highlight the current cursor line
vim.opt.cursorline = true

-- show sign column so that text doesn't shift
vim.opt.signcolumn = "yes"

-- show 10 lines above and below cursor
vim.opt.scrolloff = 10
