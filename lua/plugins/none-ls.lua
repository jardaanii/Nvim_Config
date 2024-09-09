return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		-- Setup formatting and diagnostics with null-ls
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.prettier, -- Prettier for JS/TS/CSS formatting
				null_ls.builtins.formatting.stylua, -- Stylua for Lua formatting
				null_ls.builtins.diagnostics.eslint_d, -- ESLint for JS/TS linting
				null_ls.builtins.formatting.rubocop, -- Rubocop for Ruby formatting
				null_ls.builtins.formatting.goimports, -- Gofmt for Go formatting
				-- You can also use goimports if you prefer it over gofmt
				-- null_ls.builtins.formatting.goimports, -- Goimports for Go
			}
		})

		-- Key mapping for manual formatting
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
