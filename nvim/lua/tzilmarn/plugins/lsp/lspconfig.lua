-- TODO: Explore this plugin and it's dependencies

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason_lspconfig = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local opts = { buffer = ev.buf, silent = true }

				opts.desc = "Show LSP references"
				vim.keymap.set("n", "<leader>lu", "<cmd>Telescope lsp_references<CR>", opts)

				opts.desc = "Go to declaration"
				vim.keymap.set("n", "<leader>ld", vim.lsp.buf.declaration, opts)

				opts.desc = "Show LSP definitions"
				vim.keymap.set("n", "<leader>l", "<cmd>Telescope lsp_definitions<CR>", opts)

				opts.desc = "Show LSP implementations"
				vim.keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", opts)

				opts.desc = "Show LSP type definitions"
				vim.keymap.set("n", "<leader>lt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

				opts.desc = "See available code actions"
				vim.keymap.set({ "n", "i" }, "<c-.>a", vim.lsp.buf.code_action, opts)

				opts.desc = "Smart rename"
				vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

				opts.desc = "Show buffer diagnostics"
				vim.keymap.set("n", "<leader>lpb", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

				opts.desc = "Show line diagnostics"
				vim.keymap.set("n", "<leader>lpl", vim.diagnostic.open_float, opts)

				opts.desc = "Go to previous diagnostic"
				vim.keymap.set("n", "<leader>lpp", vim.diagnostic.goto_prev, opts)

				opts.desc = "Go to next diagnostic"
				vim.keymap.set("n", "<leader>lpn", vim.diagnostic.goto_next, opts)

				opts.desc = "Show documentation for what is under cursor"
				vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)

				opts.desc = "Restart LSP"
				vim.keymap.set("n", "<leader>lrs", ":LspRestart<CR>", opts)
			end,
		})

		-- used to enable autocompletion (assign to every lsp server config)
		local capabilities = cmp_nvim_lsp.default_capabilities()

		local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason_lspconfig.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
			["emmet_ls"] = function()
				lspconfig["emmet_ls"].setup({
					capabilities = capabilities,
					filetypes = {
						"html",
						"typescriptreact",
						"javascriptreact",
						"css",
						"sass",
						"scss",
						"less",
						"svelte",
					},
				})
			end,
			["lua_ls"] = function()
				lspconfig["lua_ls"].setup({
					capabilities = capabilities,
					settings = {
						Lua = {
							-- make the language server recognize "vim" global
							diagnostics = {
								globals = { "vim" },
							},
							completion = {
								callSnippet = "Replace",
							},
						},
					},
				})
			end,
		})
	end,
}
