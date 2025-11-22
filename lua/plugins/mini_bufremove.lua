-- Close neovim close buffer without closing window.
-- Useful for file manager plugins.
-- https://www.reddit.com/r/neovim/comments/1bhgpmx/how_do_i_close_a_buffer_with_neotree/
return {
  "echasnovski/mini.bufremove",
  version = "*",
  keys = {
    {
      "<D-w>",
      function()
        require("mini.bufremove").delete(0)
      end,
      desc = "Close buffer",
    },
  },
}
