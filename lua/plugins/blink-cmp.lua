return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",
  opts = {
    keymap = {
      preset = "none",
      ["<C-Space>"] = { "show", "show_documentation" },
      ["<C-k>"] = { "select_prev" },
      ["<C-j>"] = { "select_next" },
      -- ["<CR>"] = { "accept" },
      -- ["???"] = { "scroll_documentation_up" },
      -- ["??"] = { "scroll_documentation_down" },
    },
    completion = {
      documentation = { auto_show = true },
      keyword = {
        -- range = "full",
      },
      list = {
        -- max_items = 10,
        selection = {
          auto_insert = false,
        },
      },
      menu = {
        min_width = 45,
        max_height = 25,
        scrolloff = 5,
        -- Whether to automatically show the window when new completion items are available
        auto_show = true,
        draw = {
          -- align_to = "none",
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
      },
    },
    appereance = {
      -- dosnot work
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
