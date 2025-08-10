local autocmd = vim.api.nvim_create_autocmd
local user_command = vim.api.nvim_create_user_command
local nvim_tree_api = require("nvim-tree.api")

local custom_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

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

autocmd("FileType", {
  group = custom_group,
  desc = "Close filetypes with <q>",
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

autocmd("LspAttach", {
  group = custom_group,
  desc = "Enable LSP type hints.",
  --- @type fun(args: table)
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client ~= nil then
      if client.supports_method("textDocument/inlayHint") or client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = args.bnfnr })
      end
    end
  end,
})

autocmd({ "BufWinEnter" }, {
  group = custom_group,
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
