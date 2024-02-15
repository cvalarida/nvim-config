local M = {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/which-key.nvim" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    local wk = require('which-key')
    local trouble = require('trouble')

    wk.register({
      d = {
        name = "Diagnostics",
        t = { trouble.toggle, "Toggle [T]rouble" },
        w = { function() require("trouble").toggle("workspace_diagnostics") end, "[W]orkspace diagnostics" },
        d = { function() require("trouble").toggle("document_diagnostics") end, "[D]ocument diagnostics" },
        q = { function() require("trouble").toggle("quickfix") end, "Toggle [Q]uickfix" },
        l = { function() require("trouble").toggle("loclist") end, "Toggle [L]oclist" },
      }
    }, { prefix = "<leader>" })
  end
}

return { M }
