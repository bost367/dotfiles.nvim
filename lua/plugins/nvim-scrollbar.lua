-- Scrollbar
return {
  "petertriho/nvim-scrollbar",
  opts = {
    hide_if_all_visible = false,
    handle = {
      blend = 0,
    },
    handlers = {
      cursor = false,
      gitsigns = true,
    },
    excluded_filetypes = {
      "dropbar_menu",
      "dropbar_menu_fzf",
      "DressingInput",
      "cmp_docs",
      "cmp_menu",
      "noice",
      "prompt",
      "TelescopePrompt",
      "NvimTree",
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
