-- TODO: Explore plugin

return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
			},
			delete_to_trash = true,
			use_default_keymaps = true,
			view_options = {
				show_hidden = true, -- Show files and directories that start with "."
				-- Sort file names in a more intuitive order for humans. Is less performant,
				-- so you may want to set to false if you work with large directories.
				natural_order = true,
				sort = {
					-- sort order can be "asc" or "desc"
					-- see :help oil-columns to see which columns are sortable
					{ "type", "asc" },
					{ "name", "asc" },
				},
			},
		})

		vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory in Oil" })
	end,
}
