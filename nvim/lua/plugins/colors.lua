-- lua/plugins/colors.lua
return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			-- vim.cmd("colorscheme rose-pine")
		end
	},
	{
		"shaunsingh/nord.nvim",
		name = "nord",
		config = function()
			vim.cmd("colorscheme nord")
		end
	},
}
