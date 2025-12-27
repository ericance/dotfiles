-- Menu that shows up when nvim is first opened
return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {":3"}
		dashboard.section.buttons.val = {
			dashboard.button("e", "  New File", "<cmd>ene<CR>"),
			dashboard.button("space + ee", "  Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("space + ff", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("space + fs", "  Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("space + wr", "󰁯  Restore Session", "<cmd>AutoSession restore<CR>"),
			dashboard.button("q", "  Quit NVIM", "<cmd>qa<CR>"),
		}

		alpha.setup(dashboard.opts)
	end,
}

