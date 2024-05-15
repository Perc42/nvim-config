return {
  'MunifTanjim/nui.nvim',
  'mfussenegger/nvim-dap',
  'mfussenegger/nvim-dap-python',
  'nvim-neotest/nvim-nio',
  'tpope/vim-rhubarb',
  'mbbill/undotree',
  'nvim-treesitter/nvim-treesitter-context',
  'letieu/btw.nvim',
  'tpope/vim-fugitive',
  'tpope/vim-sleuth',
  {
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
      },
    },
  },
  { 'folke/which-key.nvim', opts = {} },

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
