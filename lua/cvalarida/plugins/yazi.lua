local M = {
  "DreamMaoMao/yazi.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },

  keys = {
    { "<leader>fe", "<cmd>Yazi<CR>", desc = "[F]ile [E]xplorer (Yazi)" },
  },
}

return { M }
