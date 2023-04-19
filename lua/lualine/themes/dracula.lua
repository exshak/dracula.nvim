local colors = require("dracula.colors").setup()
local config = require("dracula.config").options

colors.bg_statusline = config.transparent and colors.none or colors.bg_statusline
colors.fg_gutter = config.transparent and colors.none or colors.fg_gutter

local dracula = {}

dracula.normal = {
  a = { bg = colors.purple, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
  c = { bg = colors.bg_statusline, fg = colors.fg_dark },
}

dracula.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

dracula.command = {
  a = { bg = colors.cyan, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

dracula.visual = {
  a = { bg = colors.pink, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

dracula.replace = {
  a = { bg = colors.orange, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

dracula.terminal = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.fg },
}

dracula.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.lualine_bold then
  for _, mode in pairs(dracula) do
    mode.a.gui = "bold"
  end
end

return dracula
