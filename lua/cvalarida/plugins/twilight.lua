local M = {
  "folke/twilight.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  dependencies = {
    "folke/which-key.nvim"
  },
  config = function()
    require("which-key").register({
      t = {
        f = { ":Twilight<CR>", "Toggle focus highlight (Twilight)" }
      }
    }, {prefix = "<leader>" })
  end
}

return { M }
