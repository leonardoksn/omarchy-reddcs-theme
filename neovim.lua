return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
			base00 = "#14101c",
			base01 = "#221a30",
			base02 = "#322847",
			base03 = "#45395f",
			base04 = "#5a4b78",
			base05 = "#7565a0",
			base06 = "#9080bf",
			base07 = "#b8a3e0",
			base08 = "#b45cd8",
			base09 = "#9a4fd0",
			base0A = "#c77df0",
			base0B = "#7c6ca0",
			base0C = "#6a6580",
			base0D = "#6c4ca0",
			base0E = "#9a4fd0",
			base0F = "#7a3f9c",
		},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}