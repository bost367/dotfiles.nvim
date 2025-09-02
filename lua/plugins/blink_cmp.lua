return {
  "saghen/blink.cmp",
  version = "1.*",
  event = { "InsertEnter", "CmdlineEnter" },
  dependencies = {
    "xzbdmw/colorful-menu.nvim",
  },
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "none",
      ["<C-Space>"] = { "show" },
      ["<C-k>"] = { "select_prev" },
      ["<C-j>"] = { "select_next" },
      ["<CR>"] = { "accept", "fallback" },
    },
    completion = {
      documentation = {
        auto_show = true,
        window = {
          scrollbar = false,
        },
      },
      list = {
        selection = {
          auto_insert = false,
        },
      },
      accept = {
        dot_repeat = false,
      },
      menu = {
        max_height = 13,
        scrolloff = 2,
        scrollbar = false,
        draw = {
          padding = 1,
          columns = { { "kind_icon" }, { "label", gap = 1 }, { "source_name" } },
          components = {
            label = {
              width = {
                min = 40,
              },
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
    },
    sources = {
      default = { "lsp", "buffer", "path" },
      providers = {
        lsp = {
          name = "lsp ",
          transform_items = function(_, items)
            return vim.tbl_filter(function(item)
              return item.kind ~= require("blink.cmp.types").CompletionItemKind.Snippet
            end, items)
          end,
        },
        path = {
          opts = {
            show_hidden_files_by_default = true,
          },
        },
        buffer = { name = "buf " },
        cmdline = { name = "cmd " },
      },
    },
    appearance = {
      kind_icons = {
        Text = "",
        Method = "󰰑",
        Function = "󰯼",
        Constructor = "",
        Field = "󰯺",
        Variable = "󰰚",
        Class = "󰯳",
        Interface = "󰯹",
        Module = "󰰏",
        Property = "󰰪",
        Unit = "",
        Value = "󰎠",
        Enum = "󰯷",
        Keyword = " ",
        Snippet = "󰴹",
        Color = "󰏘",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "󰯷",
        Constant = "󰯱",
        Struct = "󰰡",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "󰅲",
      },
    },
  },
}
