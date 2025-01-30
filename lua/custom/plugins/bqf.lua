return {
  'kevinhwang91/nvim-bqf',
  ft = 'qf', -- Load only when quickfix list is used
  config = function()
    require('bqf').setup {
      auto_enable = true, -- Enables BQF automatically
      preview = {
        win_height = 12, -- Height of the preview window
        win_vheight = 12,
        delay_syntax = 80, -- Delay before preview syntax highlighting
        border = 'rounded', -- Nice-looking window border
      },
      func_map = {
        tab = 'st', -- Open in a new tab
        split = 'sv', -- Open in a horizontal split
        vsplit = 'sg', -- Open in a vertical split
        prevfile = 'gk', -- Move up in the quickfix list
        nextfile = 'gj', -- Move down in the quickfix list
      },
      filter = {
        fzf = {
          action_for = { ['ctrl-s'] = 'split', ['ctrl-v'] = 'vsplit' },
          extra_opts = { '--bind', 'ctrl-o:toggle-all', '--prompt', '> ' },
        },
      },
    }
  end,
}
