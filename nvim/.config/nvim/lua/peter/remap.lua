local nnoremap = require("peter.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
-- copy file to clipboard
nnoremap("<leader>yy", "<cmd>:%y+<CR>")
-- telescope
nnoremap("<leader>ff","<cmd>lua require('telescope.builtin').find_files()<cr>")

vim.api.nvim_command('noremap! <C-BS> <C-W>')
vim.api.nvim_command('noremap! <C-h> <C-w>')

vim.cmd("set noshowmode")
