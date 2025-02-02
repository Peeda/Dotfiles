vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'next buffer bind' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', { desc = 'last buffer bind' })
vim.keymap.set({'i', 'c'}, '<C-BS>', '<C-w>', { desc = "control backspace word kill" })
vim.keymap.set({'i', 'c'}, '<C-h>', '<C-w>', { desc = "control backspace word kill windows" })
vim.keymap.set('n', '<leader>yy', '<cmd>:%y+<CR>', { desc = "copy file to clipboard"})
