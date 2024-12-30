local config = require("dracula.config")
local theme = require("dracula.theme")
local util = require("dracula.util")

local M = {}

function M._load(style)
  if style and not M._style then
    M._style = config.options.style
  end
  if not style and M._style then
    config.options.style = M._style
    M._style = nil
  end
  M.load({ style = style })
end

function M.load(opts)
  if opts then
    config.extend(opts)
  end
  util.load(theme.setup())
end

M.setup = config.setup

return M
