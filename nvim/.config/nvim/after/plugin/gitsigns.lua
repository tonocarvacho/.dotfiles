require('gitsigns').setup {
  --signs = {
    --add          = { text = '' },
    --change       = { text = '' },
    --delete       = { text = '' },
    --topdelete    = { text = '' },
    --changedelete = { text = '' },
    --untracked    = { text = '' },
  --},

  signs = {
    add          = { text = '│', hl = 'GitSignsAdd'},
    change       = { text = '│', hl = 'GitSignsChange'},
    delete       = { text = '│', hl = 'GitSignsDelete'},
    topdelete    = { text = '│', hl = 'GitSignsDelete'},
    changedelete = { text = '│', hl = 'GitsdfSignsChange'},
    untracked    = { text = '┆', hl = 'GitSignsUntracked'},
  },
  on_attach = function(bufnr)
    local function map(mode, lhs, rhs, opts)
        opts = vim.tbl_extend('force', {noremap = true, silent = true}, opts or {})
        vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
    end

    -- Navigation
    map('n', ']c', "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'", {expr=true})
    map('n', '[c', "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'", {expr=true})

    -- Actions
    map('n', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('v', '<leader>hs', ':Gitsigns stage_hunk<CR>')
    map('n', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('v', '<leader>hr', ':Gitsigns reset_hunk<CR>')
    map('n', '<leader>hS', '<cmd>Gitsigns stage_buffer<CR>')
    map('n', '<leader>hu', '<cmd>Gitsigns undo_stage_hunk<CR>')
    map('n', '<leader>hR', '<cmd>Gitsigns reset_buffer<CR>')
    map('n', '<leader>hp', '<cmd>Gitsigns preview_hunk<CR>')
    map('n', '<leader>hb', '<cmd>lua require"gitsigns".blame_line{full=true}<CR>')
    map('n', '<leader>tb', '<cmd>Gitsigns toggle_current_line_blame<CR>')
    map('n', '<leader>hd', '<cmd>Gitsigns diffthis<CR>')
    map('n', '<leader>hD', '<cmd>lua require"gitsigns".diffthis("~")<CR>')
    map('n', '<leader>td', '<cmd>Gitsigns toggle_deleted<CR>')

    -- Text object
    map('o', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    map('x', 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}
vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = "#50FA7B" })
vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = "#bd93f9" })
vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = "#ff5555" })
vim.api.nvim_set_hl(0, 'GitSignsUntracked', { fg = "#ffb86c" })

