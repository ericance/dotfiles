local palette = {
	bg = "#000000",
	fg = "#ffffff",
	green = "#6a9955",
	blue = "#0095ff",
	gray = "#999999",
}

-- Comment
vim.api.nvim_set_hl(0, "Normal", { fg = palette.fg, bg = palette.bg })
vim.api.nvim_set_hl(0, "Comment", { fg = palette.gray })


