local M = {
  'ray-x/navigator.lua',
  dependencies = {
    { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
    'neovim/nvim-lspconfig',
    "nvim-treesitter/nvim-treesitter",
    "williamboman/mason.nvim",
  },
  config = function ()
    require("navigator").setup({
      mason = true,
    })
  end
}

return { M }
