return {
  {
    'Saghen/blink.cmp',
    event = 'InsertEnter',
    version = '*',
    dependencies = { 'benlubas/cmp2lsp', 'rafamadriz/friendly-snippets' },
    opts = function()
      return vim.schedule_wrap(function()
        local ok, cmp2lsp = pcall(require, 'cmp2lsp')
        if not ok or not cmp2lsp.make_sources then
          return {} -- Ensure a valid table is always returned
        end

        return {
          keymap = { preset = 'default' },
          appearance = {
            use_nvim_cmp_as_default = true,
            nerd_font_variant = 'mono',
          },
          sources = cmp2lsp.make_sources {
            { name = 'nvim_lsp' },
            { name = 'luasnip' },
            { name = 'path' },
          },
        }
      end)()
    end,
  },
}
