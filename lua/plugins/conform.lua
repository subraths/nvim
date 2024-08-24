return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Use a sub-list to run only the first available formatter
			javascript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
			cpp = { "clang-format" },
			java = { "google-java-format" },
			yaml = { "yamlfmt" },
			html = { "prettierd" },
			css = { "prettierd" },
			go = { "gofumpt", "goimports" },
			-- json = { { "prettierd", "prettier" } },
		},
	},
}
