-- :h key-notation
local map = vim.keymap.set
local trouble = require("trouble")
local mini_bufremove = require("mini.bufremove")
local gitsigns = require("gitsigns")

local function opts(arg)
  return {
    desc = arg.desc,
    noremap = arg.noremap or true,
    silent = arg.noremap or true,
    nowait = arg.nowait or false,
  }
end

-- Custom binding
map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the First Non-blank Character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the Last Non-blank Character" }))
map("n", "<D-l>", "<cmd>Format <cr>", opts({ desc = "Format Buffer" }))

map("n", "<D-6>", function()
  trouble.diagnostics_all({ toggle = true })
end, opts({ desc = "Show All Troubles" }))

map("n", "<D-7>", function()
  trouble.diagnostics_current_buf({ toggle = true })
end, opts({ desc = "Show Troules in Current Buffer" }))

-- Buffers managment
map("n", "L", "<cmd>bnext<cr>", opts({ desc = "Next Buffer" }))
map("n", "H", "<cmd>bprevious<cr>", opts({ desc = "Prev Buffer" }))
map("n", "<D-w>", function()
  mini_bufremove.delete(0)
end, opts({ desc = "Close Buffer" }))

-- Fzf-lua
local fzf = require("fzf-lua")

vim.keymap.set("n", "ff", function()
  local project_root = vim.fs.root(0, { ".git" })
  fzf.files({ cwd = project_root })
end, { desc = "Find files" })

vim.keymap.set("n", "fif", function()
  local project_root = vim.fs.root(0, { ".git" })
  fzf.live_grep({ cwd = project_root })
end, { desc = "Find in files" })

vim.keymap.set("n", "fd", fzf.diagnostics_workspace, { desc = "Find diagnostics" })

vim.keymap.set("n", "gr", function()
  fzf.lsp_references({ ignore_current_line = true })
end, { nowait = true, desc = "Go to references" })

vim.keymap.set("n", "gd", function()
  fzf.lsp_definitions({ ignore_current_line = true })
end, { desc = "Go to definition" })

vim.keymap.set("n", "gI", function()
  fzf.lsp_implementations({ ignore_current_line = true })
end, { desc = "Go to implementation" })

vim.keymap.set("n", "<D-Enter>", function()
  fzf.code_action()
end, { desc = "Code action" })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", opts({ desc = "Increase Window Height" }))
map("n", "<C-Down>", "<cmd>resize -2<cr>", opts({ desc = "Decrease Window Height" }))
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", opts({ desc = "Decrease Window Width" }))
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", opts({ desc = "Increase Window Width" }))

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", opts({ desc = "Escape and Clear hlsearch" }))

-- Gitsign
map("n", "<D-z>", gitsigns.reset_hunk, opts({ desc = "Git Discard Changes on Current Line" }))
map("n", "<D-Z>", gitsigns.reset_buffer, opts({ desc = "Git Discard Buffer Changes" }))

-- NvimTree
map("n", "<D-1>", "<cmd>ExplorerToggle<cr>", opts({ desc = "Toggle neotree explorer" }))
map("n", "<D-F1>1", "<cmd>ExplorerReveal<cr>", opts({ nowait = true, desc = "Focus on current file in explorer" }))
