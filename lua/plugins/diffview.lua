-- https://www.naseraleisa.com/posts/diff
return {
  "sindrets/diffview.nvim",
  opts = {
    enhanced_diff_hl = true,
    show_help_hints = false,
    icons = {
      folder_closed = "",
      folder_open = "",
    },
    hooks = {
      diff_buf_win_enter = function(bufnr, winid, ctx)
        -- Turn off cursor line for diffview windows because of bg conflict
        -- https://github.com/neovim/neovim/issues/9800
        vim.wo[winid].culopt = "number"
      end,
      -- diff_buf_win_enter = function(bufnr, winid, ctx)
      --   if ctx.layout_name:match("^diff2") then
      --     if ctx.symbol == "a" then
      --       vim.opt_local.winhl = table.concat({
      --         "Normal:DiffviewDiffAddAsDelete",
      --       }, ",")
      --     elseif ctx.symbol == "b" then
      --       vim.opt_local.winhl = table.concat({
      --         "Normal:DiffviewDiffDelete",
      --       }, ",")
      --     end
      --   end
      -- end,
    },
  },
}
