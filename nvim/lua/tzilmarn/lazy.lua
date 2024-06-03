local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "tzilmarn.plugins" },
	{ import = "tzilmarn.plugins.lsp" },
	{ import = "tzilmarn.plugins.completion" },
	{ import = "tzilmarn.plugins.ui" },
	{ import = "tzilmarn.plugins.behavior" },
	{ import = "tzilmarn.plugins.mini" },
}, {
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
