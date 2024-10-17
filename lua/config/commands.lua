local autocmd = vim.api.nvim_create_autocmd
local user_command = vim.api.nvim_create_user_command
local nvim_tree_api = require("nvim-tree.api")

local function augroup(name)
  return vim.api.nvim_create_augroup("cusrom_" .. name, { clear = true })
end

user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_format = "fallback", range = range })
end, { range = true })

user_command("DiffviewFileHistoryToggle", function(_)
  local buf_name = vim.api.nvim_buf_get_name(0)
  if buf_name:find("^diffview") == nil then
    vim.cmd("DiffviewFileHistory")
  elseif buf_name:find("(DiffviewFileHistoryPanel)$") ~= nil then
    vim.cmd("DiffviewClose")
  end
end, { desc = "Toggle git history window" })

user_command("DiffviewOpenToggle", function(_)
  local buf_name = vim.api.nvim_buf_get_name(0)
  if buf_name:find("^diffview") == nil then
    vim.cmd("DiffviewOpen")
  elseif buf_name:find("(DiffviewFilePanel)$") ~= nil then
    vim.cmd("DiffviewClose")
  end
end, { desc = "Toggle current git changes" })

autocmd("FileType", {
  group = augroup("close_with_q"),
  desc = "Dlose filetypes with <q>",
  pattern = {
    "help",
    "gitsigns-blame",
    "qf",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", {
      buffer = event.buf,
      silent = true,
      desc = "Quit buffer",
    })
  end,
})

autocmd("FileType", {
  group = augroup("close_with_q_diffview"),
  desc = "Close diffview <q>.",
  pattern = {
    "DiffviewFileHistory",
    "DiffviewFiles",
  },
  callback = function(_)
    vim.keymap.set("n", "q", "<cmd>DiffviewClose<cr>", { desc = "Close Diffview" })
  end,
})

autocmd("LspAttach", {
  group = augroup("lsp_inline_hints"),
  desc = "Enable LSP type hints.",
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client ~= nil then
      if client.supports_method("textDocument/inlayHint") or client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = args.bnfnr })
      end
    end
  end,
})

autocmd({ "CursorHold", "CursorHoldI" }, {
  group = augroup("float_diagnostic_cursor"),
  desc = "Show diagnostic message under cursor.",
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
  end,
})

autocmd({ "BufWinEnter" }, {
  group = augroup("cursor_last_position"),
  desc = "Return cursor to where it was last time closing the file.",
  pattern = "*",
  command = 'silent! normal! g`"zv',
})

local function prodject_dir()
  local git_dir = vim.fn.finddir(".git", ".;")
  if git_dir ~= "" then
    return git_dir .. "/.."
  else
    local file_name = vim.api.nvim_buf_get_name(0)
    return vim.fn.fnamemodify(file_name, ":p:h")
  end
end

local is_explorer_init = false
user_command("ExplorerToggle", function()
  if not is_explorer_init then
    is_explorer_init = true
    nvim_tree_api.tree.open({ path = prodject_dir() })
  elseif not nvim_tree_api.tree.is_visible() then
    nvim_tree_api.tree.open()
  elseif nvim_tree_api.tree.is_tree_buf() then
    nvim_tree_api.tree.close()
  else
    nvim_tree_api.tree.focus()
  end
end, {})

user_command("ExplorerReveal", function()
  nvim_tree_api.tree.find_file({ open = true, focus = true })
end, {})
