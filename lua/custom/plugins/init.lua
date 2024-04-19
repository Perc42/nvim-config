-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'MunifTanjim/nui.nvim',
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-dap-python',
  'nvim-neotest/nvim-nio',
  'tpope/vim-rhubarb',
  'mbbill/undotree',
  'ThePrimeagen/harpoon',
  'nvim-treesitter/nvim-treesitter-context',
  'letieu/btw.nvim',

  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'smjonas/inc-rename.nvim',
    cmd = 'IncRename',
    keys = {
      {
        '<leader>rn',
        function()
          return ':IncRename ' .. vim.fn.expand '<cword>'
        end,
        desc = 'Incremental rename',
        mode = 'n',
        noremap = true,
        expr = true,
      },
    },
    config = true,
  },

  -- Refactoring tool
  {
    'ThePrimeagen/refactoring.nvim',
    keys = {
      {
        '<leader>r',
        function()
          require('refactoring').select_refactor {
            show_success_message = true,
          }
        end,
        mode = 'v',
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },
}
