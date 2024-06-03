return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},

			textobjects = textobjects,

			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"prisma",
				"markdown",
				"markdown_inline",
				"graphql",
				"bash",
				"dockerfile",
				"gitignore",
			},
		})
	end,
}
