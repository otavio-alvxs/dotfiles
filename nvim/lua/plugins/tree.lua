return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			renderer = {
				highlight_opened_files = "all",
				root_folder_label = ":~:s?$?",
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
				},
			},
			filters = {
				dotfiles = false,
				custom = { "node_modules", ".cache" },
			},
			view = {
				width = 35,
				side = "left",
			},
		})
	end,
}
