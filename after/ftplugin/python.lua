vim.api.nvim_buf_set_keymap(0, 'n', '<leader>rf', "<cmd>execute '!python' expand('%')<CR>", { desc = '[R]un Current [F]ile' })
