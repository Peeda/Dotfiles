return {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
        open_mapping = [[<c-/>]],
        close_on_exit = true,
        direction = "float",
        insert_mappings = true,
    },
    vim.keymap.set("n", "<leader>cp", ":TermExec cmd=\"g++ $CPFLAGS % && ./a.out\"<CR>"),
}
