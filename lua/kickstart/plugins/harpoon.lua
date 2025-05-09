return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {
        settings = {
          save_on_toggle = true, -- Salva a lista do Harpoon ao abrir/fechar o menu
        },
      }

      -- Mapeamentos de teclas
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Adicionar arquivo ao Harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Abrir menu do Harpoon' })
      vim.keymap.set('n', '<M-!>', function()
        harpoon:list():select(1)
      end, { desc = 'Ir para arquivo 1' })
      vim.keymap.set('n', '<M-@>', function()
        harpoon:list():select(2)
      end, { desc = 'Ir para arquivo 2' })
      vim.keymap.set('n', '<M-#>', function()
        harpoon:list():select(3)
      end, { desc = 'Ir para arquivo 3' })
      vim.keymap.set('n', '<M-$>', function()
        harpoon:list():select(4)
      end, { desc = 'Ir para arquivo 4' })
    end,
  },
}
