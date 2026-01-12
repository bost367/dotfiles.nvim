local icons = require("island-dark.palette").icons

return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")
    devicons.set_default_icon("", icons.default)
    devicons.setup({
      override = {
        json = {
          icon = "",
          color = icons.json,
          name = "Json",
        },
        txt = {
          icon = "",
          color = icons.default,
          name = "Txt",
        },
        properties = {
          icon = "",
          color = icons.default,
          name = "Properties",
        },
        log = {
          icon = "",
          color = icons.default,
          name = "Log",
        },
        md = {
          icon = "",
          color = icons.md,
          name = "Md",
        },
        yaml = {
          icon = "󰰳",
          color = icons.yaml,
          name = "Yaml",
        },
        yml = {
          icon = "󰰳",
          color = icons.yaml,
          name = "Yml",
        },
        sh = {
          icon = "",
          color = icons.default,
          name = "Sh",
        },
        zsh = {
          icon = "",
          color = icons.default,
          name = "Zsh",
        },
        bash = {
          icon = "",
          color = icons.default,
          name = "Bash",
        },
      },
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = icons.default,
          name = "Gitignore",
        },
      },
    })
  end,
}
