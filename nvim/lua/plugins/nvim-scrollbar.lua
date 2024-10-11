-- Scrollbar
return {
  "petertriho/nvim-scrollbar",
  opts = {
    hide_if_all_visible = false,
    handle = {
      blend = 80,
    },
    handlers = {
      cursor = false,
      gitsigns = true,
    },
    marks = {
      Error = {
        text = { "󰍴", "󰇼" },
      },
      Warn = {
        text = { "󰍴", "󰇼" },
      },
      Info = {
        text = { "󰍴", "󰇼" },
      },
      Hint = {
        text = { "󰍴", "󰇼" },
      },
      GitAdd = {
        text = "┃",
      },
      GitChange = {
        text = "┃",
      },
      GitDelete = {
        text = "▁",
      },
    },
  },
}
