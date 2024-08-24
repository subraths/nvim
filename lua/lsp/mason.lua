return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup_handlers({
				function(server_name)
					local skip_servers = {
						tsserver = true,
					}

					if skip_servers[server_name] then
						return
					end

					-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
					local capabilities = require("cmp_nvim_lsp").default_capabilities()

					local on_attach = function(client, bufnr)
						if client.server_capabilities.documentSymbolProvider then
							require("nvim-navic").attach(client, bufnr)
						end
					end

					require("lspconfig")[server_name].setup({
						on_attach = on_attach,
						capabilities = capabilities,
					})
				end,
				-- ["jdtls"] = function()
				-- 	require("lspconfig").jdtls.setup({
				-- 		handlers = {
				-- 			-- By assigning an empty function, you can remove the notifications
				-- 			-- printed to the cmd
				-- 			["$/progress"] = function(_, result, ctx) end,
				-- 		},
				-- 	})
				-- end,
				["rust_analyzer"] = function()
					require("rust-tools").setup({})
				end,
			})
		end,
	},
}