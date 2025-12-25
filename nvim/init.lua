-- Ericance's Neovim Configuration

-- General
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })
vim.opt.clipboard = "unnamedplus" -- sync system and nvim clipboard  
vim.opt.relativenumber = true
vim.opt.termguicolors = true	-- 24 bit color support
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"	-- %s shows window
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.smartcase = true
vim.opt.scrolloff = 999
vim.opt.number = true
vim.opt.wrap = false

-- Tabs
vim.opt.softtabstop = 4 -- size of spaces a tab from tab key
vim.opt.shiftwidth = 4 -- size of >> and << commands
vim.opt.tabstop = 4 -- tabs are 4 spaces

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking (copying) test',
	group = vim.api.nvim_create_augroup('Visual', {clear = true}),
	callback = function()
		vim.hl.on_yank()
	end
})

vim.cmd("colorscheme chromatic") -- my custom theme >:3

