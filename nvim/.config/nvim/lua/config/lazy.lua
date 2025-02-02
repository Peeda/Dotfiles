-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ import = "config.plugins" },
		{
			"folke/tokyonight.nvim",
			styles = {
				comments = {
					italic = false,
				},
				keywords = {
					italic = false
				},
			},
			config = function() vim.cmd.colorscheme "tokyonight" end,
		},
		'tpope/vim-sleuth',
		{ -- Adds git related signs to the gutter, as well as utilities for managing changes
			'lewis6991/gitsigns.nvim',
			opts = {
				signs = {
					add = { text = '+' },
					change = { text = '~' },
					delete = { text = '_' },
					topdelete = { text = '‾' },
					changedelete = { text = '~' },
				},
			},
		},
		{
			-- Add indentation guides even on blank lines
			'lukas-reineke/indent-blankline.nvim',
			-- Enable `lukas-reineke/indent-blankline.nvim`
			-- See `:help ibl`
			main = 'ibl',
			opts = {},
		},
		{
			{
				-- LSP Configuration & Plugins
				'neovim/nvim-lspconfig',
				dependencies = {
					-- Automatically install LSPs to stdpath for neovim
					'williamboman/mason.nvim',
					'williamboman/mason-lspconfig.nvim',

					-- Useful status updates for LSP
					-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
					{ 'j-hui/fidget.nvim', opts = { notification = { window = { winblend = 0 } } } },

					-- Additional lua configuration, makes nvim stuff amazing!
					'folke/neodev.nvim',
				},
			},
			{
				-- Autocompletion
				'hrsh7th/nvim-cmp',
				dependencies = {
					-- Snippet Engine & its associated nvim-cmp source
					'L3MON4D3/LuaSnip',
					'saadparwaiz1/cmp_luasnip',

					-- Adds LSP completion capabilities
					'hrsh7th/cmp-nvim-lsp',
					'hrsh7th/cmp-path',

					-- Adds a number of user-friendly snippets
					'rafamadriz/friendly-snippets',
				},
			},
		}
	},
})
