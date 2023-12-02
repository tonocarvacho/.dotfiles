local builtin = require('telescope.builtin')
require('telescope').setup{
  pickers = {

    live_grep = {
      additional_args = function(_ts)
        return {"--hidden"}
      end
    },

    grep_string = {
      additional_args = function(_ts)
        return {"--hidden"}
      end
    },

    find_files = {
      hidden = true,
      path_display = { "truncate" }
    },

    git_files = {
      hidden = true,
      path_display = { "truncate" }
    },
  },
}

--vim.keymap.set('n', '<leader>sf', ":Telescope find_files hidden=true<CR>", {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
--vim.keymap.set('n', '<leader>sr', builtin.references, {})
vim.keymap.set('n', '<leader>ss', builtin.git_status, {})
vim.keymap.set('n', '<leader>sb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>sv', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>sc', builtin.git_commits, {})
--vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sg', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sl', ":Telescope buffers<CR>")
vim.keymap.set('n', '<leader>sr', builtin.lsp_references, {})

