return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      sync_root_with_cwd = true,
      filters = { custom = { '^.git$' } },
      diagnostics = {
        enable = true,
      },
    }
    vim.keymap.set('n', '<leader>tt', require('nvim-tree.api').tree.toggle, { desc = '[T]oggle [T]ree' })
  end,
}
