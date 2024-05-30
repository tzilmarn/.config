-- Navigate between splits
vim.keymap.set("n", "<C-M-h>", "<C-w>h")
vim.keymap.set("n", "<C-M-j>", "<C-w>j")
vim.keymap.set("n", "<C-M-k>", "<C-w>k")
vim.keymap.set("n", "<C-M-l>", "<C-w>l")

-- Go to next buffer in current split
vim.keymap.set("n", "<C-M-]>", ":bnext<CR>", { desc = "Go to next buffer" })

-- Go to previous buffer in current split
vim.keymap.set("n", "<C-M-[>", ":bprevious<CR>", { desc = "Go to previous buffer" })

-- TODO: Move bufferline remaps to bufferline file

-- window management
vim.keymap.set("n", "<leader>sl", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sj", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sk", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
vim.keymap.set("n", "<C-M-x>", "<cmd>close<CR>", { desc = "Close current split" })

-- buffer management
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "]b", "<cmd>bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "[b", "<cmd>bp<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>bb", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer and switch" })
vim.keymap.set("n", "<leader>bx", "<cmd>BufferLinePickClose<CR>", { desc = "Pick buffer and close it" })

vim.keymap.set("n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<CR>", { desc = "Go to buffer 1" })
vim.keymap.set("n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<CR>", { desc = "Go to buffer 2" })
vim.keymap.set("n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<CR>", { desc = "Go to buffer 3" })
vim.keymap.set("n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<CR>", { desc = "Go to buffer 4" })
vim.keymap.set("n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<CR>", { desc = "Go to buffer 5" })
vim.keymap.set("n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<CR>", { desc = "Go to buffer 6" })
vim.keymap.set("n", "<leader>b7", "<cmd>BufferLineGoToBuffer 7<CR>", { desc = "Go to buffer 7" })
vim.keymap.set("n", "<leader>b8", "<cmd>BufferLineGoToBuffer 8<CR>", { desc = "Go to buffer 8" })
vim.keymap.set("n", "<leader>b9", "<cmd>BufferLineGoToBuffer 9<CR>", { desc = "Go to buffer 9" })

-- tab management
vim.keymap.set("n", "<leader>btt", "<cmd>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>btx", "<cmd>tabclose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "]t", "<cmd>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "[t", "<cmd>tabprevious<CR>", { desc = "Previous tab" })
