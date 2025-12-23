-- Ericance Neovim Configuration

-- General
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.relativenumber = true
vim.opt.number = true

-- Tabs
vim.opt.softtabstop = 4 -- size of spaces a tab from tab key
vim.opt.shiftwidth = 4 -- size of >> and << commands
vim.opt.tabstop = 4 -- looks like 4 spaces

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus" -- system clipboard
end)

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) test',
	group = vim.api.nvim_create_augroup('Visual', {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})
