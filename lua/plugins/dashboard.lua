return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		local db = require("dashboard")
		db.setup({
			theme = "hyper",
			config = {
				week_header = {
					enable = true,
				},
				shortcut = {
					{ desc = "󰊳 Update", group = "@property", action = "Lazy update", key = "u" },
					{ desc = "󰊳 Lazy", group = "@property", action = "Lazy", key = "l" },
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Files",
						group = "Label",
						action = "Telescope find_files",
						key = "f",
					},
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Config",
						group = "Label",
						action = "lua require('telescope.builtin').find_files({cwd='~/.config/nvim/'})",
						key = "c",
					},
					{
						icon = " ",
						icon_hl = "@variable",
						desc = "Quit",
						group = "Label",
						action = "q!",
						key = "q",
					},
				},
        footer = {
          "Let\'s work! 󱓞󱓞󱓞"
        }
			},
		})
		-- config
		-- db.setup({
		--   theme = "doom",
		--   config = {
		--     header = {}, --your header
		--     center = {
		--       {
		--         icon = " ",
		--         icon_hl = "Title",
		--         desc = "Find File           ",
		--         desc_hl = "String",
		--         key = "b",
		--         keymap = "SPC f f",
		--         key_hl = "Number",
		--         key_format = " %s", -- remove default surrounding `[]`
		--         action = "lua print(2)",
		--       },
		--       {
		--         icon = " ",
		--         desc = "Find Dotfiles",
		--         key = "f",
		--         keymap = "SPC f d",
		--         key_format = " %s", -- remove default surrounding `[]`
		--         action = "lua print(3)",
		--       },
		--     },
		--     footer = {}, --your footer
		--   },
		-- })
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
