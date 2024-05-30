-- indent
vim.opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2 -- 2 spaces for indent width
vim.opt.expandtab = false -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
vim.opt.swapfile = false

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
vim.opt.inccommand = "split" -- shows split when substituting

-- wrap
vim.opt.wrap = false -- don't wrap lines

-- selection
vim.opt.virtualedit = "block" -- allow selecting empty space in buffer
