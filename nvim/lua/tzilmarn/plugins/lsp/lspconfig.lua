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

				local telescope = require("telescope.builtin")

				opts.desc = "LSP: References"
				vim.keymap.set("n", "<leader>lfr", telescope.lsp_references, opts)

				opts.desc = "LSP: Declaration"
				vim.keymap.set("n", "<leader>ld", vim.lsp.buf.declaration, opts)

				opts.desc = "LSP: Definitions"
				vim.keymap.set("n", "<leader>lfd", telescope.lsp_definitions, opts)

				opts.desc = "LSP: Implementations"
				vim.keymap.set("n", "<leader>lfm", telescope.lsp_implementations, opts)

				opts.desc = "LS: Type definitions"
				vim.keymap.set("n", "<leader>lft", telescope.lsp_type_definitions, opts)

				opts.desc = "LSP: Code actions"
				vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)

				opts.desc = "LSP: Rename symbol"
				vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

				opts.desc = "LSP: Diagnostics"
				vim.keymap.set("n", "<leader>lfx", telescope.diagnostics, opts)

				opts.desc = "LSP: Line diagnostic"
				vim.keymap.set("n", "<leader>lx", vim.diagnostic.open_float, opts)

				opts.desc = "LSP: Hover"
				vim.keymap.set("n", "<leader>lk", vim.lsp.buf.hover, opts)

				opts.desc = "Go to previous diagnostic"
				vim.keymap.set("n", "[x", vim.diagnostic.goto_prev, opts)

				opts.desc = "Go to next diagnostic"
				vim.keymap.set("n", "]x", vim.diagnostic.goto_next, opts)
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
