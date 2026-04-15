return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8', -- Versão estável
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')

      -- Configuração básica
      require('telescope').setup({})

      -- Atalhos de teclado (Keymaps)
      -- 'ff' de Find Files
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope: Buscar Arquivos' })
      -- 'fg' de Live Grep
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope: Buscar Texto' })
      -- 'fb' de Find Buffers
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope: Listar Buffers' })
      -- 'fh' de Find Help
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope: Buscar Ajuda' })
    end
  }
}
