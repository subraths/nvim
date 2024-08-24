return {
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- We'd like this plugin to load first out of the rest
		config = true, -- This automatically runs `require("luarocks-nvim").setup()`
	},
	{
		"nvim-neorg/neorg",
		dependencies = { "luarocks.nvim" },
		-- put any other flags you wanted to pass to lazy here!
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {},
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/notes",
								ideas = "~/notes/marks.norg",
							},
							default_workspace = "notes",
						},
					},
				},
			})
		end,
	},
	-- {
	-- 	"nvim-neorg/neorg",
	-- 	build = false, -- disable the build script that currently uses luarocks.nvim
	-- 	opts = {
	-- 		load = {
	-- 			["core.defaults"] = {},
	-- 			["core.concealer"] = {},
	-- 			["core.dirman"] = {
	-- 				config = {
	-- 					workspaces = {
	-- 						notes = "~/notes",
	-- 					},
	-- 					default_workspace = "notes",
	-- 				},
	-- 			},
	-- 		},
	-- 	},
	-- },
}
