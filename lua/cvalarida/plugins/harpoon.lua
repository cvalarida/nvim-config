local M = {
	'ThePrimeagen/harpoon',
	dependencies = { "folke/which-key.nvim" },
	config = function ()
    require("harpoon").setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 8,
      }
    })

		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")

		local whichkey = require("which-key")
		whichkey.register({
			h = {
				name = "Harpoon",
				a = { mark.add_file, "Add file" },
				h = { ui.toggle_quick_menu, "Toggle quick menu" },
				n = { ui.nav_next, "Next" },
				p = { ui.nav_prev, "Prev" },
			}
		}, { prefix = "<leader>" })
	end
}

return { M }
