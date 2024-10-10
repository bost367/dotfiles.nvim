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

-- Custom binding
map({ "n", "x" }, "gh", "_", opts({ desc = "Go to the First Non-blank Character" }))
map({ "n", "x" }, "gl", "g_", opts({ desc = "Go to the Last Non-blank Character" }))
map("n", "<D-l>", "<cmd>Format <cr>", opts({ desc = "Format Buffer" }))
map("n", "<D-6>", "<cmd>Trouble diagnostics_all toggle<cr>", opts({ desc = "Show All Troules" }))
map("n", "<D-7>", "<cmd>Trouble diagnostics_current_buf toggle<cr>", opts({ desc = "Show Troules in Current Buffer" }))

-- Buffers
map("n", "L", "<cmd>bnext<cr>", opts({ desc = "Next Buffer" }))
map("n", "H", "<cmd>bprevious<cr>", opts({ desc = "Prev Buffer" }))
map("n", "<D-w>", "<cmd>lua MiniBufremove.delete(0)<cr>", opts({ desc = "Close Buffer" }))

-- LSP mapping
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts({ desc = "Go to Declaration" }))
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts({ desc = "Go to Definition" }))
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts({ desc = "Go to References" }))
map("n", "<D-Enter>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts({ desc = "Fix Suggestion" }))

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

-- Neotree
map("n", "<D-1>", "<cmd>NeotreeToggle<cr>", opts({ desc = "Toggle neotree explorer" }))
map("n", "<D-F1>1", "<cmd>NeotreeReveal<cr>", opts({ nowait = true, desc = "Focus on current file in explorer" }))

local user_command = vim.api.nvim_create_user_command
local function curent_git_dir()
  local git_root = vim.fn.finddir(".git", ".;")
  return git_root .. "/.."
end

local function is_neotree_opened()
  local manager = require("neo-tree.sources.manager")
  local renderer = require("neo-tree.ui.renderer")
  local state = manager.get_state("filesystem")
  return renderer.window_exists(state)
end

local function is_neotree_focus()
  local buf_name = vim.api.nvim_buf_get_name(0)
  return buf_name:find("neo%-tree ") ~= nil
end

user_command("NeotreeToggle", function()
  if not is_neotree_opened() then
    local prodject_dir = curent_git_dir()
    vim.api.nvim_command("Neotree toggle=true dir=" .. prodject_dir)
  elseif is_neotree_focus() then
    vim.api.nvim_command("Neotree close")
  else
    vim.api.nvim_command("Neotree focus")
  end
end, {})

user_command("NeotreeReveal", function()
  local prodject_dir = curent_git_dir()
  vim.api.nvim_command("Neotree reveal dir=" .. prodject_dir)
end, {})
