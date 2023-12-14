require('neotest').setup({
  adapters = {
    require("neotest-java")({
        ignore_wrapper = false, -- whether to ignore maven/gradle wrapper
    }),
  },
})

vim.keymap.set("n", "<Leader>tr", ":lua require('neotest').run.run()<CR>", {noremap = true,  silent = true })
vim.keymap.set("n", "<Leader>ta", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", {noremap = true,  silent = true })
vim.keymap.set("n", "<Leader>to", ":lua require('neotest').output.open()<CR>", {noremap = true,  silent = true })
vim.keymap.set("n", "<Leader>ts", ":lua require('neotest').summary.toggle()<CR>", {noremap = true,  silent = true })
