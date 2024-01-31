local M = {
  'ray-x/navigator.lua',
  dependencies = {
    { 'ray-x/guihua.lua', build = 'cd lua/fzy && make' },
    'neovim/nvim-lspconfig',
    "nvim-treesitter/nvim-treesitter",
    "williamboman/mason.nvim",
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({})
      end,
    }
  },
  config = function ()
    require("navigator").setup({
      mason = true,
      treesitter_analysis = true,
      treesitter_navigation = true,
      treesitter_analysis_max_num = 100,
      treesitter_analysis_condense = true,
      ts_fold = {
        enable = true,
        max_lines_scan_comments = 20,
        disable_filetypes = {'help', 'guihua', 'text'},
      },
    })
  end
}

return { M }
