-- return {
-- 	"nvim-java/nvim-java",
-- 	opts = {
-- 		spring_boot_tools = {
-- 			enable = false,
-- 		},
--
-- 		jdk = {
-- 			-- install jdk using mason.nvim
-- 			auto_install = false,
-- 		},
-- 	},
-- 	dependencies = {
-- 		{
-- 			"neovim/nvim-lspconfig",
-- 		},
-- 	},
-- }
return {
	{
		"mfussenegger/nvim-jdtls",
		ft = { "java" },
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
			local config = {
				cmd = {
					"java",
					"-Declipse.application=org.eclipse.jdt.ls.core.id1",
					"-Dosgi.bundles.defaultStartLevel=4",
					"-Declipse.product=org.eclipse.jdt.ls.core.product",
					"-Dlog.protocol=true",
					"-Dlog.level=ALL",
					"-Xmx1g",
					"--add-modules=ALL-SYSTEM",
					"--add-opens",
					"java.base/java.util=ALL-UNNAMED",
					"--add-opens",
					"java.base/java.lang=ALL-UNNAMED",

					"-jar",
					vim.fn.expand(
						"~/.config/nvim/jdtls/plugins/org.eclipse.equinox.launcher_1.6.900.v20240613-2009.jar"
					),

					"-configuration",
					vim.fn.expand("~/.config/nvim/jdtls/config_linux"),

					"-data",
					vim.fn.expand("~/.cache/jdtls/workspace/") .. project_name,
				},

				-- 💀
				-- This is the default if not provided, you can remove it. Or adjust as needed.
				-- One dedicated LSP server & client will be started per unique root_dir
				root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),

				-- Here you can configure eclipse.jdt.ls specific settings
				-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
				-- for a list of options
				settings = {
					java = {},
				},

				-- Language server `initializationOptions`
				-- You need to extend the `bundles` with paths to jar files
				-- if you want to use additional eclipse.jdt.ls plugins.
				--
				-- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
				--
				-- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
				init_options = {
					bundles = {},
				},

				capabilities = capabilities,
			}
			-- This starts a new client & server,
			-- or attaches to an existing client & server depending on the `root_dir`.
			require("jdtls").start_or_attach(config)
		end,
	},
}
