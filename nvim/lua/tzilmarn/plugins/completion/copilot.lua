return {
	"zbirenbaum/copilot.lua",
	config = function()
		local copilot = require("copilot")
		local panel = require("copilot.panel")

		copilot.setup({
			panel = {
				enabled = true,
				auto_refresh = true,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<cr>",
					refresh = "gr",
				},
				layout = {
					position = "right",
					ratio = 0.4,
				},
			},
			suggestion = {
				enabled = true,
				auto_trigger = true,
				debounce = 75,
				keymap = {
					accept = "<c-.>",
					accept_word = false,
					accept_line = false,
					next = "<c-,><c-n>",
					prev = "<c-,><c-p>",
					dismiss = "<c-,>x",
				},
			},
			copilot_node_command = "node",
			server_opts_overrides = {},
		})

		vim.keymap.set("n", "<leader>..", function()
			panel.open({})
		end, { noremap = true, silent = true })
	end,
}
