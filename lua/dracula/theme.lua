local colors = require("dracula.colors")
local config = require("dracula.config")
local util = require("dracula.util")

local M = {}

function M.setup()
  local o = config.options
  local t = { colors = colors.setup(), config = o }
  local c = t.colors

  t.highlights = {
    Bold = { bold = true },
    Italic = { italic = true },
    Underlined = { underline = true },
    ColorColumn = { bg = c.bg_dark },
    Comment = { fg = c.comment, style = o.styles.comments },
    Conceal = { fg = c.cyan },
    CurSearch = { link = "IncSearch" },
    Cursor = { bg = c.fg, fg = c.bg },
    CursorColumn = { bg = c.subtle },
    CursorIM = { bg = c.fg, fg = c.bg },
    CursorLine = { bg = c.subtle },
    CursorLineNr = { fg = c.fg },
    Debug = { fg = c.orange },
    DiffAdd = { bg = c.diff.add },
    DiffChange = { bg = c.diff.change },
    DiffDelete = { bg = c.diff.delete, fg = c.subtle },
    DiffText = { bg = c.diff.text },
    Directory = { fg = c.purple, bold = true },
    EndOfBuffer = { fg = c.bg },
    Error = { fg = c.error },
    ErrorMsg = { fg = c.error },
    FloatBorder = { bg = c.bg_float, fg = c.subtle },
    FoldColumn = { bg = o.transparent and c.none or c.bg, fg = c.subtle },
    Folded = { bg = o.transparent and c.none or c.bg_dark, fg = c.comment },
    HighlightURL = { fg = c.cyan, style = o.styles.comments },
    IncSearch = { bg = c.orange, fg = c.bg },
    lCursor = { bg = c.fg, fg = c.bg },
    LineNr = { fg = c.comment },
    MatchParen = { fg = c.green, underline = true },
    ModeMsg = { fg = c.fg_dark, bold = true },
    MoreMsg = { fg = c.fg, bold = true },
    MsgArea = { fg = c.fg_dark },
    NonText = { fg = c.subtle },
    Normal = { bg = o.transparent and c.none or c.bg, fg = c.fg },
    NormalFloat = { bg = c.bg_float, fg = c.fg },
    NormalNC = { bg = o.transparent and c.none or o.dim_inactive and c.bg_dark or c.bg, fg = c.fg },
    NormalSB = { bg = c.bg_sidebar, fg = c.fg_dark },
    Pmenu = { bg = c.bg_popup, fg = c.fg },
    PmenuSbar = { bg = c.bg_popup },
    PmenuSel = { bg = util.darken(c.fg_gutter, 0.8) },
    PmenuThumb = { bg = c.fg_gutter },
    Question = { fg = c.fg, bold = true },
    QuickFixLine = { bg = c.selection, bold = true },
    Search = { bg = c.green, fg = c.bg },
    SignColumn = { bg = o.transparent and c.none or c.bg, fg = c.fg_gutter },
    SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter },
    SpecialKey = { fg = c.subtle },
    SpellBad = { sp = c.error, undercurl = true },
    SpellCap = { sp = c.warn, undercurl = true },
    SpellLocal = { sp = c.info, undercurl = true },
    SpellRare = { sp = c.hint, undercurl = true },
    StatusLine = { bg = c.bg_statusline, fg = c.fg_dark },
    StatusLineNC = { bg = c.bg_statusline, fg = c.fg_gutter },
    Substitute = { bg = c.red, fg = c.bg_dark },
    TabLine = { bg = c.bg_statusline, fg = c.fg_gutter },
    TabLineFill = { bg = c.bg_dark },
    TabLineSel = { bg = o.transparent and c.none or c.bg, fg = c.fg },
    Title = { fg = c.cyan, bold = true },
    Todo = { bg = c.cyan, fg = c.bg, bold = true },
    VertSplit = { fg = c.subtle },
    Visual = { bg = c.selection },
    VisualNOS = { bg = c.selection },
    WarningMsg = { fg = c.warn },
    Whitespace = { fg = c.fg_gutter },
    WildMenu = { bg = c.selection },
    WinSeparator = { fg = c.subtle },

    Constant = { fg = c.purple },
    String = { fg = c.yellow },
    Character = { fg = c.pink },
    Number = { link = "Constant" },
    Boolean = { link = "Constant" },
    Float = { link = "Constant" },
    Identifier = { fg = c.fg, style = o.styles.variables },
    Function = { fg = c.green, style = o.styles.functions },
    Statement = { fg = c.pink },
    Conditional = { fg = c.pink },
    Repeat = { fg = c.pink },
    Label = { fg = c.pink },
    Operator = { fg = c.pink },
    Keyword = { fg = c.pink, style = o.styles.keywords },
    Exception = { fg = c.pink },
    PreProc = { fg = c.pink },
    Include = { fg = c.pink },
    Define = { fg = c.pink },
    Macro = { fg = c.pink },
    PreCondit = { fg = c.pink },
    StorageClass = { fg = c.pink },
    Structure = { fg = c.pink },
    Typedef = { fg = c.pink },
    Type = { fg = c.cyan },
    Delimiter = { fg = c.fg },
    Special = { fg = c.pink },
    SpecialComment = { fg = c.cyan },
    Tag = { fg = c.cyan },
    ["helpHyperTextJump"] = { fg = c.cyan, underline = true },
    ["helpCommand"] = { fg = c.purple },
    ["helpExample"] = { fg = c.green },
    ["helpBacktick"] = { link = "Special" },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { fg = c.fg },
    ["@punctuation.special"] = { link = "Special" },
    ["@punctuation.special.markdown"] = { fg = c.orange },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Macro" },
    ["@string.regex"] = { link = "String" },
    ["@string.escape"] = { link = "Character" },
    ["@string.documentation"] = { fg = c.yellow },
    ["@symbol"] = { fg = c.purple },
    ["@annotation"] = { fg = c.yellow },
    ["@attribute"] = { fg = c.green },
    ["@namespace"] = { link = "Structure" },
    ["@function.builtin"] = { fg = c.cyan },
    ["@function.macro"] = { link = "Function" },
    ["@parameter"] = { fg = c.orange, italic = true },
    ["@parameter.reference"] = { fg = c.orange },
    ["@field"] = { fg = c.orange },
    ["@property"] = { fg = c.orange },
    ["@constructor"] = { fg = c.cyan },
    ["@label"] = { fg = c.purple },
    ["@keyword"] = { fg = c.pink, style = o.styles.keywords },
    ["@keyword.function"] = { fg = c.pink, style = o.styles.functions },
    ["@keyword.operator"] = { link = "Operator" },
    ["@exception"] = { fg = c.purple },
    ["@variable"] = { fg = c.fg, style = o.styles.variables },
    ["@variable.builtin"] = { fg = c.red, style = o.styles.variables },
    ["@text"] = { fg = c.fg },
    ["@text.strong"] = { fg = c.fg, bold = true },
    ["@text.emphasis"] = { fg = c.fg },
    ["@text.underline"] = { link = "Underlined" },
    ["@text.title"] = { fg = c.yellow },
    ["@text.literal"] = { fg = c.yellow },
    ["@text.uri"] = { fg = c.yellow },
    ["@text.reference"] = { fg = c.cyan },
    ["@text.todo.unchecked"] = { fg = c.blue },
    ["@text.todo.checked"] = { fg = c.green },
    ["@text.warning"] = { fg = c.bg, bg = c.warn },
    ["@text.danger"] = { fg = c.bg, bg = c.error },
    ["@text.diff.add"] = { link = "DiffAdd" },
    ["@text.diff.delete"] = { link = "DiffDelete" },
    ["@tag"] = { fg = c.cyan },
    ["@tag.delimiter"] = { fg = c.fg },
    ["@tag.attribute"] = { fg = c.green },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.interface"] = { fg = util.lighten(c.blue, 0.7) },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.variable"] = { link = "@variable" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = util.darken(c.blue, 0.8) },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },

    -- diagnostic
    DiagnosticError = { fg = c.error },
    DiagnosticWarn = { fg = c.warn },
    DiagnosticInfo = { fg = c.info },
    DiagnosticHint = { fg = c.hint },
    DiagnosticUnderlineError = { sp = c.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.warn, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.hint, undercurl = true },
    DiagnosticVirtualTextError = { bg = o.transparent and c.none or util.darken(c.error, 0.1), fg = c.error },
    DiagnosticVirtualTextWarn = { bg = o.transparent and c.none or util.darken(c.warn, 0.1), fg = c.warn },
    DiagnosticVirtualTextInfo = { bg = o.transparent and c.none or util.darken(c.info, 0.1), fg = c.info },
    DiagnosticVirtualTextHint = { bg = o.transparent and c.none or util.darken(c.hint, 0.1), fg = c.hint },

    -- lsp
    LspCodeLens = { fg = c.comment },
    LspReferenceRead = { bg = c.selection },
    LspReferenceText = { bg = c.selection },
    LspReferenceWrite = { bg = c.selection },
    LspSignatureActiveParameter = { bg = util.darken(c.selection, 0.4), bold = true },

    -- alpha
    AlphaButtons = { fg = c.purple },
    AlphaFooter = { fg = c.cyan },
    AlphaShortcut = { fg = c.pink },

    -- bufferline
    BufferLineIndicatorSelected = { fg = c.purple },

    -- cmp
    CmpItemAbbr = { fg = c.fg },
    CmpItemAbbrDeprecated = { fg = c.red, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.cyan },
    CmpItemAbbrMatchFuzzy = { fg = c.cyan },
    CmpItemKindClass = { fg = c.cyan },
    CmpItemKindConstant = { fg = c.purple },
    CmpItemKindConstructor = { fg = c.cyan },
    CmpItemKindCopilot = { fg = c.cyan },
    CmpItemKindDefault = { fg = c.fg_dark },
    CmpItemKindEnum = { fg = c.cyan },
    CmpItemKindEnumMember = { fg = c.purple },
    CmpItemKindEvent = { fg = c.fg },
    CmpItemKindField = { fg = c.orange },
    CmpItemKindFile = { fg = c.pink },
    CmpItemKindFolder = { fg = c.pink },
    CmpItemKindFunction = { fg = c.green },
    CmpItemKindInterface = { fg = c.cyan },
    CmpItemKindKeyword = { fg = c.pink },
    CmpItemKindMethod = { fg = c.green },
    CmpItemKindModule = { fg = c.yellow },
    CmpItemKindOperator = { fg = c.pink },
    CmpItemKindProperty = { fg = c.orange },
    CmpItemKindReference = { fg = c.orange },
    CmpItemKindSnippet = { fg = c.fg },
    CmpItemKindStruct = { fg = c.pink },
    CmpItemKindTypeParameter = { fg = c.orange },
    CmpItemKindUnit = { fg = c.fg },
    CmpItemKindValue = { fg = c.yellow },
    CmpItemKindVariable = { fg = c.purple, italic = true },
    CmpItemMenu = { fg = c.comment },

    -- gitsigns
    GitSignsAdd = { fg = c.gitSigns.add },
    GitSignsChange = { fg = c.gitSigns.change },
    GitSignsDelete = { fg = c.gitSigns.delete },

    -- illuminate
    IlluminatedWordRead = { bg = c.fg_gutter },
    IlluminatedWordText = { bg = c.fg_gutter },
    IlluminatedWordWrite = { bg = c.fg_gutter },

    -- mini
    MiniIndentscopePrefix = { nocombine = true },
    MiniIndentscopeSymbol = { fg = c.subtle },

    -- neovim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green },
    healthWarning = { fg = c.warn },

    -- octo
    OctoEditable = { bg = c.none },

    -- telescope
    TelescopeBorder = { bg = c.bg_float, fg = c.subtle },

    -- ts-rainbow2
    TSRainbowRed = { fg = c.pink },
    TSRainbowOrange = { fg = c.orange },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowGreen = { fg = c.green },
    TSRainbowCyan = { fg = c.cyan },
    TSRainbowBlue = { fg = c.fg },
    TSRainbowViolet = { fg = c.purple },

    -- whichkey
    WhichKey = { fg = c.purple },
    WhichKeyGroup = { fg = c.pink },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyValue = { fg = c.comment },
  }

  if not vim.diagnostic then
    local severity_map = {
      Error = "Error",
      Warn = "Warning",
      Info = "Information",
      Hint = "Hint",
    }
    local types = { "Default", "Underline", "VirtualText" }
    for _, type in ipairs(types) do
      for snew, sold in pairs(severity_map) do
        t.highlights["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  o.on_highlights(t.highlights, t.colors)

  return t
end

return M
