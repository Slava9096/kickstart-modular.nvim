return {
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
}
