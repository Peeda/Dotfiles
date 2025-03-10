require("config.lazy")
require("config.keymaps")
require("config.opts")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on yank',
  group = vim.api.nvim_create_augroup('highlight-yank', {clear = true}),
  callback = function()
	vim.highlight.on_yank()
  end,
})
