-- Highlight functions and variables in scope
return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      filetypes_denylist = {
        "qf",
        "NvimTree",
        "lazy",
        "mason",
        "DiffviewFileHistory",
        "DiffviewFiles",
        "git",
        "dapui_scopes",
        "dapui_console",
        "dapui_stacks",
        "dapui_breakpoints",
        "dapui_scopes",
        "dapui_watches",
        "dap-repl",
      },
    })
  end,
}
