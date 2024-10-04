return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- make netrw look better
	{ "prichrd/netrw.nvim", opts = {} },

	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{ "lewis6991/gitsigns.nvim", opts = {} },
	{
		"f-person/git-blame.nvim",
		opts = {
			message_template = "<summary> • <date> • <author>",
			date_format = "%r",
		},
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				direction = "float",
			})
			vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>")
			vim.keymap.set("t", "<C-\\>", "<cmd>ToggleTerm<cr>")
		end,
	},
	-- {
	-- 	"chrisgrieser/nvim-spider",
	-- 	lazy = true,
	-- 	keys = {
	-- 		{
	-- 			"e",
	-- 			"<cmd>lua require('spider').motion('e')<CR>",
	-- 			mode = { "n", "o", "x" },
	-- 		},
	-- 		{
	-- 			"w",
	-- 			"<cmd>lua require('spider').motion('w')<CR>",
	-- 			mode = { "n", "o", "x" },
	-- 		},
	-- 		{
	-- 			"b",
	-- 			"<cmd>lua require('spider').motion('b')<CR>",
	-- 			mode = { "n", "o", "x" },
	-- 		},
	-- 	},
	-- },
	{ "echasnovski/mini.surround", version = "*", opts = {} },
}
