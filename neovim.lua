return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
			base00 = "#1c1213",
			base01 = "#3a2425",
			base02 = "#563837",
			base03 = "#6d4745",
			base04 = "#8b5d57",
			base05 = "#a87569",
			base06 = "#c58d7b",
			base07 = "#e3a68c",

			base08 = "#c24f57",
			base09 = "#a63650",
			base0A = "#f28171",
			base0B = "#806c61",
			base0C = "#6b6566",
			base0D = "#684c59",
			base0E = "#a63650",
			base0F = "#893f45",
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