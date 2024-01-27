local M = {
	'nvim-telescope/telescope.nvim', tag = '0.1.5',
	dependencies = { 'nvim-lua/plenary.nvim', "folke/which-key.nvim" },
	config = function ()
    local wk = require('which-key')
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader><leader>", builtin.find_files, {desc = "Fuzzy find files"})
    wk.register({
      f = {
        name = "Find",
        s = { builtin.live_grep, "Find string in project" },
        S = { builtin.treesitter, "Find symbol in buffer" },
        b = { builtin.buffers, "Find open buffer" },
      }
    }, { prefix = "<leader>" })
	end
}

return { M }
