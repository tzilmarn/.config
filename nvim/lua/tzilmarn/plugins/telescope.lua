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

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {},
			},
		})

		telescope.load_extension("fzf")

		vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Telescope files in cwd" })
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope files in cwd" })
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Telescope grep" })
		vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fcc", "<cmd>Telescope commands<cr>", { desc = "Telescope commands" })
		vim.keymap.set(
			"n",
			"<leader>fch",
			"<cmd>Telescope command_history<cr>",
			{ desc = "Telescope commands in history" }
		)
		vim.keymap.set(
			"n",
			"<leader>fs",
			"<cmd>Telescope lsp_workspace_symbols<cr>",
			{ desc = "Telescope workspace symbols" }
		)
		vim.keymap.set(
			"n",
			"<leader>fd",
			"<cmd>Telescope lsp_document_symbols<cr>",
			{ desc = "Telescope document symbols" }
		)
		vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Telescope open buffer" })
		vim.keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Telescope quickfix" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope registers<cr>", { desc = "Telescope registers" })
	end,
}
