vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) test",
	group = vim.api.nvim_create_augroup("Visual", {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})
