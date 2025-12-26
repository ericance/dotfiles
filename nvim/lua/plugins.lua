-- Install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ 
		"git", 
		"clone", 
		"--filter=blob:none", -- only repo, no history
		"--branch=stable", 
		lazyrepo, 
		lazypath 
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
	}
})

