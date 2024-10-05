return {
	"stevearc/conform.nvim",
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 1000, -- Increased timeout for larger files
		},
		formatters_by_ft = {
			bash = { "shfmt" },
			lua = { "stylua" },
			python = { "isort", "black" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			svelte = { "prettierd" },
			cpp = { "clang-format" },
			java = { "google-java-format" },
			css = { "prettierd" },
			go = { "gofumpt", "goimports", "goimports-reviser" },
			vue = { "prettierd" },
			scss = { "prettierd" },
			less = { "prettierd" },
			html = { "prettierd" },
			json = { "prettierd" },
			jsonc = { "prettierd" },
			yaml = { "prettierd" },
			markdown = { "prettierd" },
			["markdown.mdx"] = { "prettierd" },
			graphql = { "prettierd" },
			handlebars = { "prettierd" },
			kotlin = { "ktfmt" },
			rust = { "rustfmt" },
			["*"] = { "codespell" },
			["_"] = { "trim_whitespace" },
		},
		formatters = {
			prettierd = {
				env = {
					PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.prettierrc.json"),
				},
			},
		},
	},
}
