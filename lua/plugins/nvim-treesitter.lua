return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "rust",
      "kotlin",
      "java",
      "json",
      "toml",
      "yaml",
      "xml",
      "bash",
      "go",
      "proto",
      "dockerfile",
      "editorconfig",
      "sql",
      "just",
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "*" },
      callback = function()
        vim.treesitter.start()
      end,
    })
  end,
}
