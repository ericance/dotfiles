-- For searching files and strings
return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		{"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		local defaults = {
			path_display = {"smart"},
			mappings = {
				i = {
					["<C-k>"] = actions.move_selection_previous, -- move to prev result
					["<C-j>"] = actions.move_selection_next, -- move to next result
				}
			}
		}
		telescope.setup({ defaults = defaults })
		telescope.load_extension("fzf")
	end,
}
