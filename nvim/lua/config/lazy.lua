-- Install lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ 
		"git", 
		"clone", 
		"--filter=blob:none", -- only repo, no history
		"--branch=stable", 
		lazypath 
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	checker = {
		enabled = true, -- automatically checks for plugin updates
		notify = false, -- don't tell me about it
	},
	change_detection = {
		-- disable annoying message
		notify = false,
	}
})

