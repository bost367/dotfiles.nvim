local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- neo tree 
map("n", "<Tab>", ":Neotree toggle<CR>", default_opts)
map("n", "<c-up>", ":call SwapUp()<CR>", default_opts)
map("n", "<c-down>", ":call SwapDown()<CR>", default_opts)

