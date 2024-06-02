local letter_text_object_mapping = {
	f = "function",
	o = "parameter",
	a = "attribute",
	e = "assignment",
	k = "block",
	c = "call",
	u = "conditional",
	l = "loop",
}

local textobjects = {
	select = {
		enable = true,
		lookahead = true,
		keymaps = {},
		selection_modes = {},
		include_surrounding_whitespace = true,
	},
	move = {
		enable = true,
		set_jumps = true,
		goto_next_start = {},
		goto_next_end = {},
		goto_previous_start = {},
		goto_previous_end = {},
	},
	swap = {
		enable = true,
		swap_next = {},
		swap_previous = {},
	},
}

-- Populate the keymaps based on the letter_text_object_mapping
for letter, obj in pairs(letter_text_object_mapping) do
	textobjects.select.keymaps["i" .. letter] = "@" .. obj .. ".inner"
	textobjects.select.keymaps["a" .. letter] = "@" .. obj .. ".outer"
	textobjects.move.goto_next_start["]" .. string.lower(letter)] = "@" .. obj .. ".inner"
	textobjects.move.goto_next_end["]" .. string.upper(letter)] = "@" .. obj .. ".inner"
	textobjects.move.goto_previous_start["[" .. string.lower(letter)] = "@" .. obj .. ".inner"
	textobjects.move.goto_previous_end["[" .. string.upper(letter)] = "@" .. obj .. ".inner"
	textobjects.swap.swap_next["<leader>js" .. letter] = "@" .. obj .. ".inner"
	textobjects.swap.swap_previous["<leader>jsp" .. letter] = "@" .. obj .. ".inner"
end

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
			-- autotag = {
			-- 	enable = true,
			-- },

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
