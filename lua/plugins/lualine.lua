-- Status bar

--- @type table<string,string>
local modes = {
  ["NORMAL"] = " ",
  ["INSERT"] = " ",
  ["VISUAL"] = "󰒉 ",
  ["COMMAND"] = " ",
  ["TERMINAL"] = " ",
  ["REPLACE"] = " ",
}

--- @param mode string
--- @return string
local function buffer_mode(mode)
  local icon = modes[mode]
  if icon ~= nil then
    return icon
  else
    return mode
  end
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      theme = require("island-dark.highlights.plugins.specials.lualine"),
      globalstatus = true,
      refresh = { statusline = 100 },
      section_separators = "",
      component_separators = "",
      disabled_filetypes = {
        statusline = {
          "DiffviewFileHistory",
          "DiffviewFiles",
          "git",
        },
      },
      ignore_focus = {
        "fzf",
        "mason",
        "lazy",
        "NvimTree",
        "qf",
      },
    },
    sections = {
      lualine_a = {
        { "mode", fmt = buffer_mode },
        { "branch", icon = "" },
      },
      lualine_b = {
        {
          "filename",
          path = 1,
          symbols = {
            modified = "●",
            readonly = "",
            unnamed = "",
            newfile = "󰽤",
          },
        },
      },
      lualine_c = {},
      lualine_x = {},
      lualine_y = {
        {
          "diagnostics",
          sections = { "error", "warn", "hint", "info" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
        },
      },
      lualine_z = {
        "location",
        "fileformat",
        "encoding",
        "lsp_status",
      },
    },
  },
}
