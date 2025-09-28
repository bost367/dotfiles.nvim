-- :h key-notation
local map = vim.keymap.set
local trouble = require("trouble")
local mini_bufremove = require("mini.bufremove")

local function opts(arg)
  return {
    desc = arg.desc,
    noremap = arg.noremap or true,
    silent = arg.noremap or true,
    nowait = arg.nowait or false,
  }
end

-- Custom binding
map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the first non-blank character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the last non-blank character" }))
map("n", "<D-l>", vim.cmd.Format, opts({ desc = "Format buffer" }))
map("n", "tt", function()
  vim.diagnostic.open_float({
    focusable = false,
    close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    scope = "cursor",
  })
end, opts({ desc = "Show diagnostic popup" }))

map("n", "<leader>6", function()
  trouble.diagnostics_all({ toggle = true })
end, opts({ desc = "Show all troubles" }))

map("n", "<leader>7", function()
  trouble.diagnostics_current_buf({ toggle = true })
end, opts({ desc = "Show troules in current buffer" }))

-- Buffers managment
map("n", "L", "<cmd>bnext<cr>", opts({ desc = "Next buffer" }))
map("n", "H", "<cmd>bprevious<cr>", opts({ desc = "Prev buffer" }))
map("n", "<D-w>", function()
  mini_bufremove.delete(0)
end, opts({ desc = "Close buffer" }))

-- Fzf
local fzf = require("fzf-lua")
vim.keymap.set("n", "fd", fzf.diagnostics_workspace, { desc = "Find diagnostics" })
vim.keymap.set("n", "fo", fzf.lsp_workspace_symbols, { desc = "Find workspace symb[o]ls" })
vim.keymap.set("n", "fd", fzf.diagnostics_workspace, { desc = "Find diagnostics" })
vim.keymap.set("n", "gD", fzf.lsp_declarations, { desc = "Go to [D]eclarations (e.g. interface method)" })
vim.keymap.set("n", "gI", fzf.lsp_implementations, { desc = "Go to implementation" })

vim.keymap.set("n", "gd", function()
  fzf.lsp_definitions({ ignore_current_line = true })
end, { nowait = true, desc = "Go to definition" })

vim.keymap.set("n", "ff", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "fif", fzf.live_grep, { desc = "Find in files" })

vim.keymap.set("n", "gr", function()
  fzf.lsp_references({ ignore_current_line = true })
end, { nowait = true, desc = "Go to references" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts({ desc = "Increase window height" }))
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts({ desc = "Decrease window height" }))
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts({ desc = "Decrease window width" }))
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts({ desc = "Increase window width" }))

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts({ desc = "Escape and clear hlsearch" }))

-- Gitsign
local gitsigns = require("gitsigns")
map("n", "<leader>z", gitsigns.reset_hunk, opts({ desc = "Git discard changes on current line" }))
map("n", "<leader>Z", gitsigns.reset_buffer, opts({ desc = "Git discard buffer changes" }))
map("n", "<leader>gdb", gitsigns.diffthis, opts({ desc = "Git diff buffer" }))
map("n", "<leader>gdl", gitsigns.preview_hunk_inline, opts({ desc = "Git diff line" }))

-- NvimTree
map("n", "<D-1>", "<cmd>ExplorerToggle<cr>", opts({ desc = "Toggle neotree explorer" }))
map("n", "<D-F1>1", "<cmd>ExplorerReveal<cr>", opts({ nowait = true, desc = "Focus on current file in explorer" }))
