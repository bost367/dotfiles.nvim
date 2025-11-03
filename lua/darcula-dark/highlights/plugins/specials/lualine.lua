local palette = require("darcula-dark.palette")

local solid_hl = {
  bg = palette.interface.background,
  fg = "#9B9DA5",
}

return {
  normal = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
  insert = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
  visual = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
  replace = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
  command = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
  inactive = {
    a = solid_hl,
    b = solid_hl,
    c = solid_hl,
  },
}
