return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require('telescope').setup {
	extensions = {
	  fzf = {}
	}
      }

      require('telescope').load_extension('fzf')
      vim.keymap.set("n", "<space>sf", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
      vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set("n", "<space>cn", function()
	require('telescope.builtin').find_files {
	  cwd = vim.fn.stdpath("config")
	}
      end)

    end
  }
}
