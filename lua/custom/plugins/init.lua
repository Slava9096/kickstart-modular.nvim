-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'akinsho/toggleterm.nvim',
    opts = {
      open_mapping = [[<leader>ot]],
    },
    keys = {
      { '<leader>ot', '<cmd>ToggleTerm<CR>', desc = '[O]pen [T]erminal' },
    },
  },
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup {
        enable_named_colors = true,
        enable_ctrl_x_ctrl_l_preview = false,
        paint_selected_conceal = true,
        highlight_names = false,
        excluded_filetypes = {},
      }
    end,
  },
}
