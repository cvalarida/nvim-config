-- Map keys from the vanilla nvim experience.
--
-- NOTE: All mappings from plugins belong with that plugin. Don't remap them here.

local wk = require("which-key")

vim.keymap.set("n", "<C-h>", function() vim.cmd.wincmd('h') end, { desc = "Move to left window" })
vim.keymap.set("n", "<C-l>", function() vim.cmd.wincmd('l') end, { desc = "Move to right window" })
vim.keymap.set("n", "<C-j>", function() vim.cmd.wincmd('j') end, { desc = "Move to down window" })
vim.keymap.set("n", "<C-k>", function() vim.cmd.wincmd('k') end, { desc = "Move to up window" })
vim.keymap.set("n", "<C-S-h>", function() vim.cmd.wincmd('H') end, { desc = "Move to up window" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Move selection up"})

vim.keymap.set("x", "<leader>p", "\"_dP", {desc = "Paste without selection selection"})

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
								v = { vim.cmd.Ex, "View files in netrw" },
				}
}, { prefix = "<leader>" })
