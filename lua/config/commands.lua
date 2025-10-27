local autocmd = vim.api.nvim_create_autocmd
local custom_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

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
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client ~= nil then
      if client.supports_method("textDocument/inlayHint") or client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
      end
    end
  end,
})

autocmd("BufWinEnter", {
  group = custom_group,
  desc = "Return cursor to where it was last time closing the file.",
  pattern = "*",
  command = 'silent! normal! g`"zv',
})

autocmd("BufEnter", {
  group = custom_group,
  desc = "Change cwd to git root directory if repository exests.",
  pattern = "*",
  callback = function()
    local root = vim.fs.root(0, ".git")
    if root then
      vim.api.nvim_set_current_dir(root)
    end
  end,
})

