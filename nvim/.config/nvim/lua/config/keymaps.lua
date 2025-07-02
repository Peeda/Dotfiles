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

local function cp_round(round_number)
	local folder =  "./round" .. round_number
	os.execute("mkdir " .. folder)
	local template_path = os.getenv("HOME") .. "/.config/nvim/lua/config/cp_template.cpp"
	for i = 65, 70 do
	    local file_path = folder .. "/" .. string.char(i) .. ".cpp"
	    os.execute("cp " .. template_path .. " " .. file_path)
	    vim.cmd("enew")
	    vim.cmd("edit " .. file_path)
	end
	vim.cmd("buffer 1")
end

vim.api.nvim_create_user_command('Round', function(opts)
    cp_round(opts.args)
end, { nargs = 1 })
