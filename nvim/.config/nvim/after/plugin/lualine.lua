local project_root = {
  function()
    local current_working_directory = vim.fn.getcwd()
    local parent_directory = vim.fn.fnamemodify(current_working_directory, ":h")
    local last_parent_directory = vim.fn.fnamemodify(parent_directory, ":t")
    local worktrees_directory = parent_directory .. '/worktrees'

    -- Check if the 'worktrees' directory exists
    if vim.fn.isdirectory(worktrees_directory) == 1 then
      return last_parent_directory
    else
      return vim.fn.fnamemodify(current_working_directory, ":t")
    end
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

  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },

  inactive_winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
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
        color = {
          added = "#50FA7B",
          modified = "#ffb86c",
          removed = "#ff5555",
        },
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
