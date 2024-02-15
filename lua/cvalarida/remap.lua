-- Map keys from the vanilla nvim experience.
--
-- NOTE: All mappings from plugins belong with that plugin. Don't remap them here.

local wk = require("which-key")

vim.keymap.set("n", "<C-h>", function() vim.cmd.wincmd('h') end, { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", function() vim.cmd.wincmd('l') end, { desc = "Move to right window" })
vim.keymap.set("n", "<C-j>", function() vim.cmd.wincmd('j') end, { desc = "Move to down window" })
vim.keymap.set("n", "<C-k>", function() vim.cmd.wincmd('k') end, { desc = "Move to up window" })
vim.keymap.set("n", "<C-S-h>", function() vim.cmd.wincmd('H') end, { desc = "Move to up window" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without selection selection" })

-- May remove these if I use ray-x/navigator.lua
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '[t', vim.cmd.tabprev, { desc = "Previous tab" })
vim.keymap.set('n', ']t', vim.cmd.tabnext, { desc = "Next tab" })

wk.register({
  w = {
    name = "Window",
    ['/'] = { vim.cmd.vsplit, "Split vertically" },
    ['-'] = { vim.cmd.split, "Split vertically" },
    ['='] = { function() vim.cmd.wincmd('=') end, "Equalize the windows" },
    H = { function() vim.cmd.wincmd('H') end, "Move window to the far left" },
    L = { function() vim.cmd.wincmd('L') end, "Move window to the far right" },
    -- TODO: Figure out how to not take the entire width of the screen with these
    J = { function() vim.cmd.wincmd('J') end, "Move window to the very bottom" },
    K = { function() vim.cmd.wincmd('K') end, "Move window to the very top" },
  },
  p = {
    name = "Project",
    f = { vim.cmd.Ex, "View files in netrw" },
  },
  c = {
    p = { ":let @+ = expand('%')<CR>", "[C]opy relative [P]ath to file" }
  },
  -- Not sure I want these, actually...
  -- t = {
  --   name = "Tabs",
  --   N = { vim.cmd.tabnew, "New tab" },
  --   t = { function() vim.cmd.tabedit('%') end, "Edit current file in a new tab" },
  --   n = { vim.cmd.tabnext, "Next tab" },
  --   p = { vim.cmd.tabprev, "Previous tab" },
  --   c = { vim.cmd.tabclose, "Close tab" },
  --   o = { vim.cmd.tabonly, "Close other tabs" },
  -- },
  }
}, { prefix = "<leader>" })
