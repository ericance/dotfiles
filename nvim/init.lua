-- Ericance's Neovim Configuration
require("options")
require("plugins")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) test",
	group = vim.api.nvim_create_augroup("Visual", {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})


--vim.cmd("colorscheme chromatic") -- my custom theme >:3




