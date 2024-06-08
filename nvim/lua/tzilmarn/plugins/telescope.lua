-- TODO: Explore plugin

return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {},
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fcc", builtin.commands, { desc = "Telescope commands" })
		vim.keymap.set("n", "<leader>fch", builtin.command_history, { desc = "Telescope commands in history" })
		vim.keymap.set(
			"n",
			"<leader>fibt",
			builtin.current_buffer_fuzzy_find,
			{ desc = "Telescope text inside buffer" }
		)
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope open buffer" })
		vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Telescope quickfix" })
		vim.keymap.set("n", "<leader>fo", builtin.vim_options, { desc = "Telescope vim options" })
		vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "Telescope keymaps" })
		vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "Telescope registers" })
	end,
}
