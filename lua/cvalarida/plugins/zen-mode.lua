local M = {
  "folke/zen-mode.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  dependencies = {
    "folke/which-key.nvim",
  },
  config = function()
    require('which-key').register({
      t = {
        z = { ":ZenMode<CR>", "Toggle ZenMode" }
      }
    }, { prefix = "<leader>" })
  end
}

return { M }
