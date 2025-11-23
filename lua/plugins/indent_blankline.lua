return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
    },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
      show_exact_scope = true,
    },
    exclude = {
      filetypes = {
        "git",
        "markdown",
      },
    },
  },
}
