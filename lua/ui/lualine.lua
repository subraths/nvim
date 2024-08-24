return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "stevearc/conform.nvim" },
	config = function()
		require("lualine").setup({
			sections = { lualine_c = { "os.date('%a %d %b, %H:%M')", "data", "require'lsp-status'.status()" } },
		})
	end,
}
