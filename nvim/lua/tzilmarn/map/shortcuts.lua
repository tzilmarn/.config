-- remap ^ and $ to h and l
vim.keymap.set(
	{ "n", "o", "v" },
	"H",
	"^",
	{ noremap = false, silent = true, desc = "move to the first non-blank character of the line" }
)
vim.keymap.set({ "n", "o", "v" }, "L", "$", { noremap = false, silent = true, desc = "move to the end of the line" })

-- add blank lines above and below
vim.keymap.set({ "n", "i" }, "<c-j><c-j>", function()
	vim.fn.append(vim.fn.line("."), "")
end)
vim.keymap.set({ "n", "i" }, "<c-k><c-k>", function()
	vim.fn.append(vim.fn.line(".") - 1, "")
end)
