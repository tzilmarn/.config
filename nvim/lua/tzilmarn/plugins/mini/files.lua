return {
	"echasnovski/mini.files",
	version = false,
	config = function()
		local minifiles = require("mini.files")
		minifiles.setup({
			-- Customization of explorer windows
			windows = {
				-- Whether to show preview of file/directory under cursor
				preview = true,
			},
		})
		vim.keymap.set("n", "<leader>em", function()
			minifiles.open()
		end, { noremap = true, silent = true })
	end,
}
