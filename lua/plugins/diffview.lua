-- Most wanted features:
-- https://github.com/sindrets/diffview.nvim/issues/438

local function toggle_diffview(cmd)
  if next(require("diffview.lib").views) == nil then
    vim.cmd(cmd)
  else
    vim.cmd("DiffviewClose")
  end
end

return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  keys = {
    {
      "<leader>0",
      function()
        toggle_diffview("DiffviewOpen")
      end,
      desc = "Open git log",
    },
    {
      "<leader>9",
      function()
        toggle_diffview("DiffviewFileHistory")
      end,
      desc = "Open git log",
    },
    {
      "<leader>(",
      function()
        toggle_diffview("DiffviewFileHistory %")
      end,
      desc = "Open file in current current  git log",
    },
  },
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
  },
}
