return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "stevearc/conform.nvim" },
	config = function()
		require("lualine").setup({})
	end,
}
