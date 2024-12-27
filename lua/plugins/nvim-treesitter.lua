-- Better syntax highlighting
return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
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
      },
      highlight = {
        enable = true,
      },
    })
  end,
}
