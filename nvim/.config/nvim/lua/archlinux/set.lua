vim.opt.guicursor = "i:blinkwait5-blinkon500-blinkoff500"
vim.opt.guicursor = "n-v-c:block-Cursor"

vim.opt.clipboard = "unnamedplus"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes:1"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

--vim.opt.colorcolumn = "80"
vim.opt.path = "**"
vim.opt.numberwidth = 2

vim.g.gitgutter_sign_added = "│"
vim.g.gitgutter_sign_modified = "│"
vim.g.gitgutter_sign_removed = "│"
vim.g.gitgutter_sign_removed_first_line = "│"
vim.g.gitgutter_sign_removed_above_and_below = "│"
vim.g.gitgutter_sign_modified_removed = "│"

vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = "#ffb86c" })
vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = "#ff5555" })
vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = "#f1fa8c" })
vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = "#50fa7b" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterPink', { fg = "#ff79c6" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = "#8be9fd" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterPurp', { fg = "#bd93f9" })
vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = "#ff5555" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

