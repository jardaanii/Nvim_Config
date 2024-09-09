return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"ts_ls", -- TypeScript
					"lua_ls", -- Lua
					"ltex", -- LanguageTool for natural language checking
					"prismals", -- Prisma
					"taplo", -- TOML
					"tailwindcss", -- Tailwind CSS
					"cssls", -- CSS
					"html", -- HTML
					"gopls", -- Go
					"docker_compose_language_service", -- Docker Compose
					"bashls" -- Bash
				}
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
			local lspconfig = require("lspconfig")

			-- Setup individual language servers
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.ltex.setup({
				capabilities = capabilities
			})
			lspconfig.prismals.setup({
				capabilities = capabilities
			})
			lspconfig.taplo.setup({
				capabilities = capabilities
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities
			})
			lspconfig.cssls.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})
			lspconfig.gopls.setup({
				capabilities = capabilities
			})
			lspconfig.docker_compose_language_service.setup({
				capabilities = capabilities
			})
			lspconfig.bashls.setup({
				capabilities = capabilities
			})

			-- Key mappings for LSP
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	},
}
