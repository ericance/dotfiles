-- General
vim.cmd("let g:netrw_liststyle = 3")

vim.opt.clipboard = "unnamedplus"	-- sync system and nvim clipboard  
vim.opt.relativenumber = true
vim.opt.termguicolors = true		-- 24 bit color support
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"		-- %s shows window
vim.opt.ignorecase = true			-- tab completion ignore's case
vim.opt.splitbelow = true 			-- split by default goes to bottom
vim.opt.splitright = true 			-- vsplit by default goes right
vim.opt.smartcase = true			-- override ignorecase if uppercase
vim.opt.scrolloff = 999				-- keep cursor in middle when moving
vim.opt.number = true
vim.opt.wrap = false				-- don't wrap text

-- Tabs
vim.opt.softtabstop = 4 -- size of spaces a tab from tab key
vim.opt.shiftwidth = 4 -- size of >> and << commands
vim.opt.tabstop = 4 -- tabs are 4 spaces

