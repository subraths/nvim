return {
	"stevearc/conform.nvim",
	opts = {
		stop_after_first = true,
		formatters_by_ft = {
			bash = { "shfmt" },
			sh = { "shfmt" },
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- Use a sub-list to run only the first available formatter
			javascript = { "prettierd", "prettier" },
			javascriptreact = { "prettierd", "prettier" },
			typescript = { "prettierd", "prettier" },
			typescriptreact = { "prettierd", "prettier" },
			cpp = { "clang-format" },
			java = { "google-java-format" },
			css = { "prettierd", "prettier" },
			go = { "gofumpt", "goimports", "goimports-reviser" },
			vue = { "prettierd", "prettier" },
			scss = { "prettierd", "prettier" },
			less = { "prettierd", "prettier" },
			html = { "prettierd", "prettier" },
			json = { "prettierd", "prettier" },
			jsonc = { "prettierd", "prettier" },
			yaml = { "prettierd", "prettier" },
			markdown = { "prettierd", "prettier" },
			["markdown.mdx"] = { "prettierd", "prettier" },
			graphql = { "prettierd", "prettier" },
			handlebars = { "prettierd", "prettier" },

			-- Use the "*" filetype to run formatters on all filetypes.
			["*"] = { "codespell" },

			-- Use the "_" filetype to run formatters on filetypes that don't
			-- have other formatters configured.
			["_"] = { "trim_whitespace" },
		},
	},
}
