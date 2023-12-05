local project_root = {
  function()
    return vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
  end,
  icon = "",
  cond = hide_in_width,
  separator = '',
}
require('lualine').setup {
  options = {
    theme = require('linetheme').theme(),
    globalstatus = true,
    component_separators = { left = "", right = "" },
    disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
  },

  sections = {
    lualine_a = {
      project_root,
       },
    lualine_b = {
      "branch",
    },
    lualine_c = {
      {
        "diff",
        added = " ",
        symbols = {
          untracked = " ",
          modified = " ",
          removed = " ",
        },
        colored = true,
        always_visible = false,
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      }, {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn", "info", "hint" },
      symbols = {
        error = " ",
        hint = " ",
        info = " ",
        warn = " ",
      },
      colored = true,
      update_in_insert = false,
      always_visible = false,
    },
      'filename',
    },
    lualine_x = {

    },
    lualine_y = {},
    lualine_z = {},
  }

}
