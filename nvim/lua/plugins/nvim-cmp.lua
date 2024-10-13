local ELLIPSIS_CHAR = "…"
local MAX_LABEL_WIDTH = 40
local MIN_LABEL_WIDTH = 40
local kind_icons = {
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
}

local function cut_width(_, vim_item)
  -- https://github.com/hrsh7th/nvim-cmp/issues/980#issuecomment-1121773499
  local label = vim_item.abbr
  local truncated_label = vim.fn.strcharpart(label, 0, MAX_LABEL_WIDTH)
  if truncated_label ~= label then
    vim_item.abbr = truncated_label .. ELLIPSIS_CHAR
  elseif string.len(label) < MIN_LABEL_WIDTH then
    local padding = string.rep(" ", MIN_LABEL_WIDTH - string.len(label))
    vim_item.abbr = label .. padding
  end
  -- https://github.com/hrsh7th/nvim-cmp/issues/980#issuecomment-1882213992
  vim_item.menu = ""
  return vim_item
end

return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "onsails/lspkind.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-buffer",
    "f3fora/cmp-spell",
  },
  config = function()
    local cmp = require("cmp")
    local lspkind = require("lspkind")
    cmp.setup({
      formatting = {
        fields = { cmp.ItemField.Kind, cmp.ItemField.Abbr, cmp.ItemField.Menu },
        expandable_indicator = false,
        format = lspkind.cmp_format({
          mode = "symbol",
          symbol_map = kind_icons,
          show_labelDetails = false,
          before = cut_width,
          menu = {
            nvim_lsp = "[lsp]",
            nvim_lua = "[lua]",
            buffer = "[buf]",
            spell = "[spl]",
          },
        }),
      },
      window = {
        completion = cmp.config.window.bordered({
          rorder = "rounded",
          winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        }),
        documentation = {
          border = "rounded",
          winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
        },
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = {
        {
          name = "nvim_lsp",
          entry_filter = function(entry, _)
            return require("cmp.types").lsp.CompletionItemKind[entry:get_kind()] ~= "Snippet"
          end,
        },
        { name = "nvim_lua" },
        { name = "nvim_lsp_signature_help" },
        { name = "buffer" },
        { name = "spell" },
      },
    })
  end,
}
