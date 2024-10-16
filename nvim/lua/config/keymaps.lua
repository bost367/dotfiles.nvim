-- :h key-notation
local map = vim.keymap.set

local function opts(arg)
  return {
    desc = arg.desc,
    noremap = arg.noremap or true,
    silent = arg.noremap or true,
  }
end

-- Custom binding
map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the First Non-blank Character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the Last Non-blank Character" }))
map("n", "<D-l>", ":Format <cr>", opts({ desc = "Format Buffer" }))
map("n", "<C-6>", ":Trouble diagnostics_all toggle<cr>", opts({ desc = "Show All Troules" }))
map("n", "<C-7>", ":Trouble diagnostics_currrent_buff toggle<cr>", opts({ desc = "Show Troules in Current Buffer" }))

-- Buffers
map("n", "L", "<cmd>bnext<cr>", opts({ desc = "Next Buffer" }))
map("n", "H", "<cmd>bprevious<cr>", opts({ desc = "Prev Buffer" }))
map("n", "<D-w>", "<cmd>bd<cr>", opts({ desc = "Close Buffer" }))

-- LSP mapping
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts({ desc = "Go to Declaration" }))
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts({ desc = "Go to Definition" }))
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts({ desc = "Go to References" }))

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts({ desc = "Increase Window Height" }))
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts({ desc = "Decrease Window Height" }))
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts({ desc = "Decrease Window Width" }))
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts({ desc = "Increase Window Width" }))

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts({ desc = "Escape and Clear hlsearch" }))

-- Gitsign
map("n", "<D-z>", "<cmd>Gitsigns reset_hunk<cr>", opts({ desc = "Git Discard Changes on Current Line" }))
map("n", "<D-Z>", "<cmd>Gitsigns reset_buffer<cr>", opts({ desc = "Git Discard Buffer Changes" }))
