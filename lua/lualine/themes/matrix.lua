local fg = "#1a801a"
local bg = "NONE"

local section = { fg = fg, bg = bg }
local section_bold = { fg = fg, bg = bg, gui = "bold" }

local mode = {
  a = section_bold,
  b = section,
  c = section,
  x = section,
  y = section,
  z = section_bold,
}

return {
  normal = mode,
  insert = mode,
  visual = mode,
  replace = mode,
  command = mode,
  inactive = {
    a = section,
    b = section,
    c = section,
    x = section,
    y = section,
    z = section,
  },
}
