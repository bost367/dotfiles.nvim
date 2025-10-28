-- :h key-notation
local map = vim.keymap.set

local function opts(arg)
  return {
    desc = arg.desc,
    noremap = arg.noremap or true,
    silent = arg.noremap or true,
    nowait = arg.nowait or false,
  }
end

local function describe_diagnostic()
  vim.diagnostic.open_float({
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    scope = "cursor",
  })
end

map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the first non-blank character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the last non-blank character" }))
map("n", "tt", describe_diagnostic, opts({ desc = "Show diagnostic popup" }))

-- Buffers managment
map("n", "L", "<cmd>bnext<cr>", opts({ desc = "Next buffer" }))
map("n", "H", "<cmd>bprevious<cr>", opts({ desc = "Prev buffer" }))

map("n", "<leader>r", vim.lsp.buf.rename, { desc = "LSP rename" })

-- Resize window using
map("n", "<M-Up>", "<cmd>resize +2<cr>", opts({ desc = "Increase window height" }))
map("n", "<M-Down>", "<cmd>resize -2<cr>", opts({ desc = "Decrease window height" }))
map("n", "<M-Left>", "<cmd>vertical resize -2<cr>", opts({ desc = "Decrease window width" }))
map("n", "<M-Right>", "<cmd>vertical resize +2<cr>", opts({ desc = "Increase window width" }))

-- Move cursours between wiindows
map("n", "<M-k>", "<cmd>wincmd k<cr>", opts({ desc = "Move cursor to window below current" }))
map("n", "<M-j>", "<cmd>wincmd j<cr>", opts({ desc = "Move cursor to window above current" }))
map("n", "<M-h>", "<cmd>wincmd h<cr>", opts({ desc = "Move cursor to window left of current" }))
map("n", "<M-l>", "<cmd>wincmd l<cr>", opts({ desc = "Move cursor to window right of current" }))

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts({ desc = "Escape and clear hlsearch" }))
