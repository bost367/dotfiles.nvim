return {
  "saghen/blink.cmp",
  version = "1.*",
  opts = {
    keymap = {
      preset = "none",
      ["<C-Space>"] = { "show" },
      ["<C-k>"] = { "select_prev" },
      ["<C-j>"] = { "select_next" },
      ["<CR>"] = { "accept", "fallback" },
      -- ["???"] = { "scroll_documentation_up" },
      -- ["??"] = { "scroll_documentation_down" },
    },
    completion = {
      documentation = { auto_show = true },
      list = {
        selection = {
          auto_insert = false,
        },
      },
      menu = {
        min_width = 65,
        max_height = 15,
        scrolloff = 2,
        scrollbar = false,
        draw = {
          align_to = "none",
          padding = 1,
          columns = {
            { "kind_icon", "label", "label_description", gap = 1 },
            { "source_name" },
          },
          -- columns = {
          --   { "kind_icon", "label_detailsss", gap = 1 },
          --   { "source_name" },
          -- },
          components = {
            -- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/
            -- lua/blink/cmp/types.lua
            label_detailsss = {
              text = function(ctx)
                -- return ctx.item.detail
                return ctx.item.labelDetails
              end,
            },
          },
        },
      },
    },
    sources = {
      default = { "lsp" },
      providers = {
        lsp = { name = "lsp" },
        buffer = { name = "buf" },
        cmdline = { name = "cmd" },
      },
    },
    appearance = {
      kind_icons = {
        Text = " ",
        Method = "󰰑 ",
        Function = "󰯼 ",
        Constructor = " ",
        Field = "󰯺 ",
        Variable = "󰰚 ",
        Class = "󰯳 ",
        Interface = "󰯹 ",
        Module = "󰰏  ",
        Property = "󰰪 ",
        Unit = " ",
        Value = "󰎠 ",
        Enum = "󰯷 ",
        Keyword = "󰌋 ",
        Snippet = " ",
        Color = "󰏘 ",
        File = " ",
        Reference = " ",
        Folder = " ",
        EnumMember = "󰯷 ",
        Constant = "󰯱 ",
        Struct = "󰰡  ",
        Event = " ",
        Operator = "󰆕 ",
        TypeParameter = "󰅲 ",
      },
    },
  },
}
