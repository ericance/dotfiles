local palette = {
	bg = "#000000",
	fg = "#ffffff",
	orange  = "#ffb86c",
	green = "#50fa7b",
	blue = "#0095ff",
	gray = "#999999",
}

-- Core
vim.api.nvim_set_hl(0, "Normal", { fg = palette.fg, bg = palette.bg })

-- Syntax
vim.api.nvim_set_hl(0, "Keyword", { fg = palette.orange })
vim.api.nvim_set_hl(0, "Function", { fg = palette.blue })
vim.api.nvim_set_hl(0, "String", { fg = palette.green })
vim.api.nvim_set_hl(0, "Comment", { fg = palette.gray })

-- Nvim Tree
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = palette.bg })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = palette.blue, bold = true })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = palette.blue, bold = true })

