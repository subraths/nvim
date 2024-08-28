return {
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded", -- double, rounded, single, shadow, none, or a table of borders
			},
			floating_window = true,

			-- disable virtual text
			hint_enable = false,
		},
	},
	-- {
	-- 	"hrsh7th/cmp-nvim-lsp-signature-help",
	-- },
}
