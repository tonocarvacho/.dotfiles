vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  filters = { custom = { "^.git$", "node_modules", ".cache" } },
  view = {
    width = 35,
  },
  update_focused_file = {
    enable = true,
  },
  renderer = {
    highlight_opened_files = "all",
    indent_width = 2,
    group_empty = true,
    full_name = false,
    indent_markers = {
      enable = true,
    }
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

vim.keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>")
