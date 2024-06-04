return {
	{
		"catppuccin/nvim",
		priority = 1000,
		config = function()
			local theme = require("catppuccin")
			theme.setup({
				flavour = "auto",
				background = {
					light = "latte",
					dark = "mocha",
				},
				transparent_background = true,
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
}
