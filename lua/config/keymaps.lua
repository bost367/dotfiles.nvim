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
map("n", "<leader>l", vim.cmd.Format, opts({ desc = "Format buffer" }))
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
map("n", "fd", fzf.diagnostics_workspace, { desc = "Find diagnostics" })
map("n", "fo", fzf.lsp_workspace_symbols, { desc = "Find workspace symb[o]ls" })
map("n", "fd", fzf.diagnostics_workspace, { desc = "Find diagnostics" })
map("n", "gD", fzf.lsp_declarations, { desc = "Go to [D]eclarations (e.g. interface method)" })
map("n", "gI", fzf.lsp_implementations, { desc = "Go to implementation" })
map("n", "ff", fzf.files, { desc = "Find files" })
map("n", "fif", fzf.live_grep, { desc = "Find in files" })
map("n", "<M-CR>", fzf.lsp_code_actions, { desc = "LSP code action" })

map("n", "gr", function()
  fzf.lsp_references({ ignore_current_line = true })
end, { nowait = true, desc = "Go to references" })

map("n", "gd", function()
  fzf.lsp_definitions({ ignore_current_line = true })
end, { nowait = true, desc = "Go to definition" })

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

-- Gitsign
local gitsigns = require("gitsigns")
map("n", "<leader>z", gitsigns.reset_hunk, opts({ desc = "Git discard changes on current line" }))
map("n", "<leader>Z", gitsigns.reset_buffer, opts({ desc = "Git discard buffer changes" }))
map("n", "<leader>gdb", gitsigns.diffthis, opts({ desc = "Git diff buffer" }))
map("n", "<leader>gdl", gitsigns.preview_hunk_inline, opts({ desc = "Git diff line" }))

-- NvimTree
local nvim_tree = require("nvim-tree.api")
map("n", "<leader>1", nvim_tree.tree.toggle, opts({ desc = "Toggle neotree explorer" }))
map("n", "<leader>!", function()
  nvim_tree.tree.find_file({ open = true, focus = true })
end, opts({ desc = "Focus on current file in explorer" }))
