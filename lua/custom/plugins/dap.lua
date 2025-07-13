return {
  {
    'rcarriga/nvim-dap-ui',
    event = 'VeryLazy',
    dependencies = {
      'mfussenegger/nvim-dap',
      'nvim-neotest/nvim-nio',
    },
    config = function()
      local dap = require 'dap'
      local dapui = require 'dapui'
      dapui.setup()
      dap.listeners.after.event_initialized['dapui_config'] = function()
        dapui.open()
      end
      dap.listeners.after.event_terminated['dapui_config'] = function()
        dapui.close()
      end
      dap.listeners.after.event_exited['dapui_config'] = function()
        dapui.close()
      end
    end,
  },
  {
    'jay-babu/mason-nvim-dap.nvim',
    dependencies = {
      'williamboman/mason.nvim',
      'mfussenegger/nvim-dap',
    },
    opts = {
      handlers = {},
    },
    ensure_installed = {
      'codelldb',
    },
  },
  {
    'mfussenegger/nvim-dap',
    config = function()
      local dap = require 'dap'

      vim.keymap.set('n', '<Leader>dt', function()
        dap.toggle_breakpoint()
      end, { desc = '[D]ebugger [T]oggle breakpoint' })
      vim.keymap.set('n', '<Leader>dc', function()
        dap.continue()
      end, { desc = '[D]ebugger [C]ontinue' })
    end,
  },
}
