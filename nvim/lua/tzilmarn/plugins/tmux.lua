return {
	"aserowy/tmux.nvim",
	config = function()
		local tmux = require("tmux")

		tmux.setup({
			copy_sync = {
				enable = true,
				redirect_to_clipboard = true,
				redirect_to_paste = true,
			},
			navigation = {
				enable_default_keybindings = false,
			},
			resize = {
				enable_default_keybindings = false,
			},
		})

		-- Navigate between splits
		vim.keymap.set("n", "<C-M-h>", function()
			tmux.move_left()
		end)
		vim.keymap.set("n", "<C-M-j>", function()
			tmux.move_bottom()
		end)
		vim.keymap.set("n", "<C-M-k>", function()
			tmux.move_top()
		end)
		vim.keymap.set("n", "<C-M-l>", function()
			tmux.move_right()
		end)
	end,
}
