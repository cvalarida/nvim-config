local M = {
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/which-key.nvim"
    },
    config = function ()
      local wk = require("which-key")
      wk.register({
        g = {
          name = "Git",
          g = { vim.cmd.LazyGit, "Open Lazygit" },
        }
      }, {prefix = "<leader>"})
    end
  },
}

return { M }
