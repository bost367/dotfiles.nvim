-- Most wanted features:
-- https://github.com/sindrets/diffview.nvim/issues/438
return {
  "sindrets/diffview.nvim",
  opts = {
    enhanced_diff_hl = true,
    show_help_hints = false,
    icons = {
      folder_closed = "",
      folder_open = "",
    },
    file_panel = {
      listing_style = "list",
      win_config = {
        width = 40,
      },
    },
    hooks = {
      diff_buf_win_enter = function(bufnr, winid, ctx)
        -- Turn off cursor line for diffview windows because of bg conflict
        -- https://github.com/neovim/neovim/issues/9800
        vim.wo[winid].culopt = "number"
      end,
    },
  },
}
