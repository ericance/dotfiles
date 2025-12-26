return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeoutlen = 500 -- how long it takes to activate
		vim.o.timeout = true
	end,
	opts = {
		-- Leave empty for default config
	}
}

