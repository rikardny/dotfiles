return {
  vim.keymap.set('n', '<leader>h', '<C-w>h', { desc = 'Go to the left window' }),
  vim.keymap.set('n', '<leader>j', '<C-w>j', { desc = 'Go to the down window' }),
  vim.keymap.set('n', '<leader>k', '<C-w>k', { desc = 'Go to the up window' }),
  vim.keymap.set('n', '<leader>l', '<C-w>l', { desc = 'Go to the right window' }),
  vim.keymap.set('n', '<leader>q', '<C-w>q', { desc = 'Quit a window' }),

  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

}
