local color = require("cvalarida.plugins.color")
local harpoon = require("cvalarida.plugins.harpoon")
local lspzero = require("cvalarida.plugins.lsp-zero")
local treesitter = require("cvalarida.plugins.treesitter")
local telescope = require("cvalarida.plugins.telescope")
local whichkey = require("cvalarida.plugins.which-key")

local M = {
	color,
	harpoon,
	lspzero,
	treesitter,
	telescope,
	whichkey
}

return { M }
