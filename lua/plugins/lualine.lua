-- Status bar

--- @type table<string,string>
local modes = {
  ["NORMAL"] = " ",
  ["INSERT"] = " ",
  ["VISUAL"] = "󰒉 ",
  ["COMMAND"] = " ",
  ["REPLACE"] = " ",
}

--- @param mode string
--- @return string
local function buffer_mode(mode)
  local icon = modes[mode]
  if icon ~= nil then
    return icon
  else
    return ""
  end
end

--- @return string
local function readonly_mode()
  if vim.bo.readonly then
    return " "
  else
    return " "
  end
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    options = {
      globalstatus = true,
      section_separators = "",
      component_separators = "",
      disabled_filetypes = {
        "trouble",
        "NvimTree",
      },
    },
    sections = {
      lualine_a = {
        { "mode", fmt = buffer_mode },
      },
      lualine_b = {
        { "branch", icon = "" },
      },
      lualine_c = {},
      lualine_x = {
        {
          "diagnostics",
          sections = { "error", "warn", "hint", "info" },
          symbols = { error = " ", warn = " ", hint = " ", info = " " },
        },
      },
      lualine_y = {
        "location",
        "fileformat",
        "encoding",
        "lsp_status",
        readonly_mode,
      },
      lualine_z = {},
    },
  },
}
