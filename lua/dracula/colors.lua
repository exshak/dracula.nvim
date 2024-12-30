local util = require("dracula.util")

local M = {}

M.default = {
  bg = "#282a36",
  bg_dark = "#21222c",
  fg = "#f8f8f2",
  fg_dark = "#d8d8d4",
  fg_gutter = "#3b4261",
  comment = "#6272a4",
  selection = "#44475a",
  subtle = "#424450",
  blue = "#7aa2f7",
  cyan = "#8be9fd",
  green = "#50fa7b",
  orange = "#ffb86c",
  pink = "#ff79c6",
  purple = "#bd93f9",
  red = "#ff5555",
  yellow = "#f1fa8c",
}

M.pro = {
  bg = "#22212c",
  bg_dark = "#17161d",
  fg = "#f8f8f2",
  fg_dark = "#d8d8d4",
  fg_gutter = "#3b4261",
  comment = "#7970a9",
  selection = "#454158",
  subtle = "#424450",
  blue = "#82aaff",
  cyan = "#80ffea",
  green = "#8aff80",
  orange = "#ffca80",
  pink = "#ff80bf",
  purple = "#9580ff",
  red = "#ff9580",
  yellow = "#ffff80",
}

function M.setup(opts)
  opts = opts or {}
  local config = require("dracula.config")
  local style = config.options.style
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)
  util.bg = colors.bg
  colors.none = "NONE"
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.bg_float = config.options.styles.floats == "transparent" and colors.none or colors.bg_dark
  colors.bg_popup = config.options.styles.popups == "transparent" and colors.none or colors.bg_dark
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none or colors.bg_dark
  colors.bg_statusline = config.options.styles.statuslines == "transparent" and colors.none or colors.bg_dark
  colors.diff = { add = "#273849", change = "#43353e", delete = "#3a273a", text = colors.bg_dark }
  colors.git = { add = colors.green, change = colors.orange, delete = colors.red }
  colors.gitSigns = { add = colors.green, change = colors.orange, delete = colors.red }
  colors.error = colors.red
  colors.warn = colors.orange
  colors.info = colors.blue
  colors.hint = colors.cyan
  config.options.on_colors(colors)
  return colors
end

return M
