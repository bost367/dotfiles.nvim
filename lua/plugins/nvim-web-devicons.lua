local light_hl = "#CED0D6"

return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    local devicons = require("nvim-web-devicons")
    devicons.set_default_icon("", light_hl)
    devicons.setup({
      override = {
        json = {
          icon = "",
          color = "#B589EC",
          name = "Json",
        },
        txt = {
          icon = "",
          color = light_hl,
          name = "Txt",
        },
        properties = {
          icon = "",
          color = light_hl,
          name = "Properties",
        },
        log = {
          icon = "",
          color = light_hl,
          name = "Log",
        },
        md = {
          icon = "",
          color = "#548AF7",
          name = "Md",
        },
        yaml = {
          icon = "󰰳",
          color = "#DB5C5C",
          name = "Yaml",
        },
        yml = {
          icon = "󰰳",
          color = "#DB5C5C",
          name = "Yml",
        },
        sh = {
          icon = "",
          color = light_hl,
          name = "Sh",
        },
        zsh = {
          icon = "",
          color = light_hl,
          name = "Zsh",
        },
        bash = {
          icon = "",
          color = light_hl,
          name = "Bash",
        },
      },
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = light_hl,
          name = "Gitignore",
        },
      },
    })
  end,
}
