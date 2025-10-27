-- Git status (added, removed, etc.)
return {
  "lewis6991/gitsigns.nvim",
  lazy = false,
  keys = {
    {
      "<leader>z",
      function()
        require("gitsigns").reset_hunk()
      end,
      desc = "Git discard changes on current line",
    },
    {
      "<leader>Z",
      function()
        require("gitsigns").reset_buffer()
      end,
      desc = "Git discard buffer changes",
    },
    {
      "<leader>gdb",
      function()
        require("gitsigns").diffthis()
      end,
      desc = "Git diff buffer",
    },
    {
      "<leader>gdl",
      function()
        require("gitsigns").preview_hunk_inline()
      end,
      desc = "Git diff line",
    },
  },
  opts = {
    signs = {
      changedelete = { text = "┃" },
    },
  },
}
