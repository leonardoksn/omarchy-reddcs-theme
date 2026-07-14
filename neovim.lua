return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
-- Monotone shades (base00-base07)
			base00 = "#1c1213", -- Default background
			base01 = "#3a2425", -- Lighter background (status bars)
			base02 = "#563837", -- Selection background
			base03 = "#6d4745", -- Comments, invisibles
			base04 = "#8b5d57", -- Dark foreground
			base05 = "#a87569", -- Default foreground
			base06 = "#c58d7b", -- Light foreground
			base07 = "#e3a68c", -- Light background

			-- Accent colors (base08-base0F)
			base08 = "#c24f57", -- Variables, errors, red
			base09 = "#a63650", -- Integers, constants, orange
			base0A = "#f28171", -- Classes, types, yellow
			base0B = "#806c61", -- Strings, green
			base0C = "#6b6566", -- Support, regex, cyan
			base0D = "#684c59", -- Functions, keywords, blue
			base0E = "#a63650", -- Keywords, storage, magenta
			base0F = "#893f45", -- Deprecated, brown/yellow
			},
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")

			-- Enable hot reload
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
