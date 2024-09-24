local M = {}

local defaults = {
  style = "default",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    floats = "transparent",
    popups = "transparent",
    sidebars = "transparent",
    statuslines = "transparent",
  },
  terminal_colors = true,
  transparent = true,
  dim_inactive = false,
  lualine_bold = false,
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
}

M.options = {}

function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

function M.extend(options)
  M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

M.setup()

return M
