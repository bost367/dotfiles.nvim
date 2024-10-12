-- :help key-notation
local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }

-- custom binding
map("n", "gh", "0", default_opts)
map("n", "gl", "$", default_opts)
map("x", "gh", "0", default_opts)
map("x", "gl", "$", default_opts)

map("n", "<D-l>", ":Format <CR>", default_opts)

-- bufferline
map("n", "L", ":BufferLineCycleNext <CR>", default_opts)
map("n", "H", ":BufferLineCyclePrev <CR>", default_opts)
map("n", "<D-w>", ":bd<CR>", default_opts)

-- lsp mapping
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = true })
