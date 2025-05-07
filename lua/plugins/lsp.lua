return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
		"saghen/blink.cmp",
	},
	config = function()
		vim.lsp.enable("pylsp")
		vim.lsp.enable("lua_ls")
		vim.lsp.enable("ruby_lsp")
		vim.lsp.enable("rubocop")
		vim.lsp.enable("html")
		vim.lsp.enable("cssls")
		vim.lsp.enable("tailwindcss")
		vim.lsp.enable("emmet_language_server")

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	end,
}
