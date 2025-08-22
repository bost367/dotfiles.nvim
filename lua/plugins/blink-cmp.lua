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
        min_width = 45,
        max_height = 15,
        scrolloff = 2,
        -- scrollbar = false,
        draw = {
          padding = 1,
          columns = {
            { "kind_icon", "label", gap = 1 },
            { "label_description", "source_name", gap = 1 },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "buffer" },
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
