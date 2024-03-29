vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>t", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<C-a>", ":q!<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":bd!<CR>")
--vim.keymap.set("n", "<leader>q", ":w<CR>:bd<CR>")
--vim.keymap.set("n", "<leader>j", ":bp<CR>")
vim.keymap.set("n", "<C-k>", ":bp<CR>")
vim.keymap.set("n", "<C-l>", ":bn<CR>")
vim.keymap.set("n", "<C-j>", ":b#<CR>")

vim.keymap.set("n", "<leader>a", ":%bd|e#|bd#<CR>")
--vim.keymap.set("n", "<C-f>", ":FloatermNew vifm<CR>")
--vim.keymap.set("n", "<C-f>", "<cmd>tvf<CR>")

vim.keymap.set("n", "<leader>,", "m`o<Esc>")
vim.keymap.set("n", "<leader>.", "m`O<Esc>")

-- nerd commenter
vim.keymap.set("n", "<C-/>", "<plug>NERDCommenterToggle")
vim.keymap.set("x", "<C-/>", "<plug>NERDCommenterToggle")
vim.keymap.set("n", "<leader>/", "<plug>NERDCommenterToggle")
vim.keymap.set("x", "<leader>/", "<plug>NERDCommenterToggle")

-- greatest remap ever
--vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("x", "p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- im.keymap.set({"n", "v"}, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- This is going to get me cancelled
--vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-e>", "<cmd>silent !tmux neww t<CR>")
--vim.keymap.set("n", "<C-e>", "<cmd>silent !tmux neww ~/.local/bin/tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cpre<CR>zz")
--vim.ke.p.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--vim.ke.p.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--vim.ke.p.set("n", "<leader>v", [[*Ncw]])
--vim.ke.p.set("n", "<leader>v", [[*Ncw]])

vim.keymap.set("n", "<leader>tt", ':DBUIToggle<CR>25<C-w>-:DBUIToggle<CR>G')
--vim.keymap.set("n", "<leader>p", ":DBUI<CR>")
--vim.keymap.set("n", "<leader>t", 'iselect current_user<C-c>:w<CR>:DBUIToggle<CR>10<C-w>-:DBUIToggle<CR>G')


--vim.keymap.set("v", "<leader>v", [[:%s/\<<C-r><C-w>\>//g<Left><Left><C-r>]])
vim.keymap.set("n", "<leader>n", '/<c-r>"<CR>')
vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("v", "<leader>sr", [[y:%s/<c-r>"/<C-r>"/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
--vim.keymap.set('v', '<leader>v', [[:%s]], { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
--vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader>r", ":so<CR>")
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

--vim.keymap.set('n', '<Leader>n', [[:let @/='\\%V'..vim.fn.escape(@",'\\/")..'\\%V' \| vim.fn.search(@,'W')<CR>]], { noremap = true, silent = true })
