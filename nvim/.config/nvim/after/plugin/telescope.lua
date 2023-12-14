local builtin = require('telescope.builtin')
require('telescope').setup{
  pickers = {

    live_grep = {
      additional_args = function(_ts)
        return {"--hidden"}
      end,
      file_ignore_patterns = { "%.git/", "node_modules/", "%.obsidian/", "%.cache/" }
    },

    grep_string = {
      additional_args = function(_ts)
        return {"--hidden"}
      end,
      file_ignore_patterns = { "%.git/", "node_modules/", "%.obsidian/", "%.cache/" }
    },

    find_files = {
      hidden = true,
      path_display = { "truncate" },
      file_ignore_patterns = { "%.git/", "node_modules/", "%.obsidian/", "%.cache/" }
    },

    git_files = {
      hidden = true,
      path_display = { "truncate" },
      file_ignore_patterns = { "%.git/", "node_modules/", "%.obsidian/", "%.cache/" }
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
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sg', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>sl', ":Telescope buffers<CR>")
vim.keymap.set('n', 'gr', builtin.lsp_references, {})

require("telescope").load_extension("git_worktree")
vim.keymap.set('n', '<leader>sa', ":lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
vim.keymap.set('n', '<leader>sw', ":lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")

