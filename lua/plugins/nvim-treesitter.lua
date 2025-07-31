vim.api.nvim_create_user_command("TSInstallList", function()
  require("nvim-treesitter")
    .install({
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
    :wait(1000 * 30) -- 30 seconds. For autoinstall via script.
end, {})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local filetype = vim.treesitter.language.get_lang(vim.bo[args.buf].ft) --[[@as string]]
    if vim.treesitter.get_parser(args.buf, filetype, { error = false }) then
      vim.treesitter.start(args.buf)
    end
  end,
})

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
}
