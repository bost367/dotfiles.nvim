-- Highlight functions and variables in scope
return {
  "RRethy/vim-illuminate",
  config = function()
    require("illuminate").configure({
      filetypes_denylist = {
        "qf",
        "trouble",
        "NvimTree",
        "DiffviewFileHistory",
        "DiffviewFiles",
      },
    })
  end,
}
