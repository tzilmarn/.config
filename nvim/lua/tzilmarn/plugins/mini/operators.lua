return {
	"echasnovski/mini.operators",
	version = false,
	opts = {
		-- Evaluate text and replace with output
		evaluate = {
			prefix = "<leader>j=",
			func = nil,
		},

		-- Exchange text regions
		exchange = {
			prefix = "<leader>jx",
			reindent_linewise = true,
		},

		-- Multiply (duplicate) text
		multiply = {
			prefix = "<leader>jm",
			func = nil,
		},

		-- Replace text with register
		replace = {
			prefix = "<leader>jr",
			reindent_linewise = true,
		},

		-- Sort text
		sort = {
			prefix = "<leader>js",
			func = nil,
		},
	},
}
