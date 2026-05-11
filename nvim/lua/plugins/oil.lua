return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory' })
    end,
  },
}
