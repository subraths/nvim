return {
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {
			bind = true,
			handler_opts = {
				border = "rounded",
			},
			floating_window = true,

			-- disable virtual text
			hint_enable = false,
		},
	},
}
