return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				-- Formating
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofmt,
				null_ls.builtins.formatting.goimports,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.goimports_reviser,
				-- Diagnostics
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.diagnostics.semgrep,
				null_ls.builtins.diagnostics.staticcheck,
				-- Completions
				null_ls.builtins.completion.luasnip,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
