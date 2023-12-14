vim.opt.guicursor      = "i:blinkwait5-blinkon500-blinkoff500"
vim.opt.guicursor      = "n-v-c:block-Cursor"
vim.opt.guicursor      = "n-v-c:block-Cursor"
vim.opt.showmode       = false
vim.opt.showcmd        = false


vim.opt.shortmess      = vim.opt.shortmess + {
  c = true,   -- Do not show completion messages in command line
  C = true,
  F = true,   -- Do not show file info when editing a file, in the command line
  --W = true, -- Do not show "written" in command line when writing
  I = true,   -- Do not show intro message when starting Vim
}

vim.opt.formatoptions  = vim.opt.formatoptions + {
  c = false,
  r = false,
  o = false,
}

vim.opt.termguicolors  = true
vim.opt.cmdheight      = 0

vim.opt.clipboard      = "unnamedplus"

vim.opt.nu             = true
vim.opt.relativenumber = true

vim.opt.tabstop        = 2
vim.opt.softtabstop    = 2
vim.opt.shiftwidth     = 2
vim.opt.expandtab      = true

vim.opt.smartindent    = true

vim.opt.wrap           = false

vim.opt.swapfile       = false
vim.opt.backup         = false
vim.opt.undodir        = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile       = true

vim.opt.hlsearch       = false
vim.opt.incsearch      = true

vim.opt.scrolloff      = 8
vim.opt.signcolumn     = "yes:1"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"
vim.opt.path = "**"
vim.opt.numberwidth = 2
vim.g.blamer_prefix = '       '
vim.g.blamer_enabled = true
vim.g.blamer_delay = 1000
vim.g.blamer_relative_time = true
vim.g.blamer_show_in_visual_modes = false
vim.g.blamer_show_in_insert_modes = false

-- Set the environment variable for the database URL
--vim.g.db_ui_env_variable_url = 'postgresql://localhost'

-- Set the environment variable for the database name
--vim.g.db_ui_env_variable_name = 'postgres'
--vim.g.gitgutter_sign_added = "│"
--vim.g.gitgutter_sign_modified = "│"
--vim.g.gitgutter_sign_removed = "│"
--vim.g.gitgutter_sign_removed_first_line = "│"
--vim.g.gitgutter_sign_removed_above_and_below = "│"
--vim.g.gitgutter_sign_modified_removed = "│"

--vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = "#ffb86c" })
--vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = "#ff5555" })
--vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = "#f1fa8c" })
--vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = "#50fa7b" })

vim.api.nvim_set_hl(0, 'RainbowDelimiterPink', { fg = "#ff79c6" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = "#8be9fd" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterPurp', { fg = "#bd93f9" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = "#ff5555" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
