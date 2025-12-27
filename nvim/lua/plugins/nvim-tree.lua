-- File explorer
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			renderer = {
				icons = {
                    show = {
						-- hide git icons
                        git = false,
                    },
                },
			},
			git = {
				-- show git files
				ignore = false
			},
		})
	end,
}
