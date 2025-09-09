return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():prepend()
    end, { desc = 'Prepend buffer to harpoon list' })
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Append buffer to harpoon list' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle harpoon quick menu' })

    vim.keymap.set('n', '<C-1>', function()
      harpoon:list():select(1)
    end, { desc = 'Move to harpoon tab 1' })
    vim.keymap.set('n', '<C-2>', function()
      harpoon:list():select(2)
    end, { desc = 'Move to harpoon tab 2' })
    vim.keymap.set('n', '<C-3>', function()
      harpoon:list():select(3)
    end, { desc = 'Move to harpoon tab 3' })
    vim.keymap.set('n', '<C-4>', function()
      harpoon:list():select(4)
    end, { desc = 'Move to harpoon tab 4' })
    vim.keymap.set('n', '<leader><C-1>', function()
      harpoon:list():replace_at(1)
    end, { desc = 'Replace harpoon tab 1' })
    vim.keymap.set('n', '<leader><C-2>', function()
      harpoon:list():replace_at(2)
    end, { desc = 'Replace harpoon tab 2' })
    vim.keymap.set('n', '<leader><C-3>', function()
      harpoon:list():replace_at(3)
    end, { desc = 'Replace harpoon tab 3' })
    vim.keymap.set('n', '<leader><C-4>', function()
      harpoon:list():replace_at(4)
    end, { desc = 'Replace harpoon tab 4' })

    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Move to previous harpoon tab' })
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Move to next harpoon tab' })
  end,
}
