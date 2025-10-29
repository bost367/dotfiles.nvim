local hi = vim.api.nvim_set_hl
local palette = require("darcula-dark.palette")

hi(0, "MasonHighlightBlockBold", { bg = palette.interface.active_element })
hi(0, "MasonMutedBlock", { bg = palette.interface.background })
hi(0, "MasonMuted", { fg = palette.interface.hint_text })
hi(0, "MasonHighlight", { fg = palette.link })
hi(0, "MasonHighlightBlock", { bg = palette.interface.active_element })
