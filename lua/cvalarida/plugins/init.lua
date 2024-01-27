local color = require("cvalarida.plugins.color")
local harpoon = require("cvalarida.plugins.harpoon")
local lazygit = require("cvalarida.plugins.lazygit")
local lspzero = require("cvalarida.plugins.lsp-zero")
local treesitter = require("cvalarida.plugins.treesitter")
local telescope = require("cvalarida.plugins.telescope")
local whichkey = require("cvalarida.plugins.which-key")

require("lazy").setup({
	color,
	harpoon,
  lazygit,
	lspzero,
	treesitter,
	telescope,
	whichkey
})
