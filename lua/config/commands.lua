local autocmd = vim.api.nvim_create_autocmd
local user_command = vim.api.nvim_create_user_command

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
