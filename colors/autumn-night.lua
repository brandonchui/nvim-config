-- Autumn Night — ported from Helix aa.toml
vim.cmd("highlight clear")
vim.g.colors_name = "autumn-night"

local p = {
  bg           = "#1F1C1E",
  fg           = "#C5BFB6",
  dark_gray    = "#282426",
  darker_gray  = "#312D2F",
  darkest_gray = "#3A3638",
  gray         = "#4D4A4C",
  highlight    = "#4E4547",
  comment      = "#626F7D",
  warm_gold    = "#D49B52",
  warm_tan     = "#BC8F6A",
  burnt_orange = "#B15F4F",
  terracotta   = "#A67A65",
  red          = "#A84D5B",
  green        = "#7EA87F",
  blue         = "#878EC0",
  string       = "#A6C88D",
  func         = "#E6B673",
  operator     = "#D4A373",
  preproc      = "#C7956D",
  include      = "#B18F6A",
}

local hi = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal",       { fg = p.fg, bg = p.bg })
hi("NormalFloat",  { fg = p.fg, bg = p.darker_gray })
hi("FloatBorder",  { fg = p.gray, bg = p.darker_gray })
hi("CursorLine",   { bg = p.dark_gray })
hi("CursorLineNr", { fg = p.fg })
hi("LineNr",       { fg = p.gray })
hi("SignColumn",   { bg = p.dark_gray })
hi("Visual",       { bg = p.highlight })
hi("VisualNOS",    { bg = p.darkest_gray })
hi("Search",       { fg = p.bg, bg = p.warm_tan })
hi("IncSearch",    { fg = p.bg, bg = p.burnt_orange })
hi("CurSearch",    { fg = p.bg, bg = p.burnt_orange })
hi("ColorColumn",  { bg = p.dark_gray })
hi("Cursor",       { fg = "#FFFFFF", bg = p.burnt_orange })
hi("MatchParen",   { fg = p.fg, underline = true })
hi("Pmenu",        { fg = p.fg, bg = p.darker_gray })
hi("PmenuSel",     { fg = p.bg, bg = p.warm_tan })
hi("PmenuSbar",    { bg = p.dark_gray })
hi("PmenuThumb",   { bg = p.fg })
hi("WinSeparator", { fg = p.dark_gray })
hi("VertSplit",    { fg = p.dark_gray })
hi("Folded",       { fg = p.comment, bg = p.dark_gray })
hi("FoldColumn",   { fg = p.gray })
hi("NonText",      { fg = p.gray })
hi("SpecialKey",   { fg = p.gray })
hi("Whitespace",   { fg = p.gray })
hi("EndOfBuffer",  { fg = p.bg })
hi("Directory",    { fg = p.warm_tan })
hi("Title",        { fg = p.warm_tan, bold = true })
hi("Question",     { fg = p.green })
hi("MoreMsg",      { fg = p.green })
hi("WarningMsg",   { fg = p.burnt_orange, bold = true })
hi("ErrorMsg",     { fg = p.red, bold = true })
hi("ModeMsg",      { fg = p.fg, bold = true })

-- Statusline
hi("StatusLine",       { fg = p.fg, bg = p.dark_gray })
hi("StatusLineNC",     { fg = p.gray, bg = p.darker_gray })
hi("StatusModeNormal", { fg = p.bg, bg = p.warm_tan, bold = true })
hi("StatusModeInsert", { fg = p.bg, bg = p.terracotta, bold = true })
hi("StatusModeVisual", { fg = p.bg, bg = p.burnt_orange, bold = true })

-- Syntax (minimal — most things are fg color, like your Helix theme)
hi("Comment",      { fg = p.comment })
hi("String",       { fg = p.string })
hi("Character",    { fg = p.string })
hi("Number",       { fg = p.warm_gold })
hi("Float",        { fg = p.warm_gold })
hi("Boolean",      { fg = p.fg })
hi("Identifier",   { fg = p.fg })
hi("Function",     { fg = p.func })
hi("Operator",     { fg = p.operator })
hi("Keyword",      { fg = p.fg })
hi("Statement",    { fg = p.fg })
hi("Conditional",  { fg = p.fg })
hi("Repeat",       { fg = p.fg })
hi("Label",        { fg = p.fg })
hi("Exception",    { fg = p.fg })
hi("Type",         { fg = p.fg })
hi("StorageClass", { fg = p.fg })
hi("Structure",    { fg = p.fg })
hi("Typedef",      { fg = p.fg })
hi("Constant",     { fg = p.fg })
hi("PreProc",      { fg = p.preproc })
hi("Include",      { fg = p.include })
hi("Define",       { fg = p.preproc })
hi("Macro",        { fg = p.fg })
hi("PreCondit",    { fg = p.preproc })
hi("Special",      { fg = p.green, bold = true, italic = true })
hi("SpecialChar",  { fg = p.fg })
hi("Delimiter",    { fg = p.operator })
hi("Tag",          { fg = p.fg })
hi("Underlined",   { fg = p.terracotta, underline = true })
hi("Error",        { fg = p.red, bold = true })
hi("Todo",         { fg = p.blue, bold = true, italic = true })

-- Diagnostics
hi("DiagnosticError",          { fg = p.red, bold = true })
hi("DiagnosticWarn",           { fg = p.burnt_orange, bold = true })
hi("DiagnosticInfo",           { fg = p.red, bold = true })
hi("DiagnosticHint",           { fg = p.warm_tan, bold = true })
hi("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
hi("DiagnosticUnderlineWarn",  { sp = p.burnt_orange, undercurl = true })
hi("DiagnosticUnderlineInfo",  { sp = p.comment, undercurl = true })
hi("DiagnosticUnderlineHint",  { sp = p.warm_tan, undercurl = true })
hi("DiagnosticUnnecessary",    { fg = p.fg, italic = true })
hi("DiagnosticDeprecated",     { fg = p.fg, strikethrough = true })

-- Diff
hi("DiffAdd",    { fg = p.warm_tan })
hi("DiffChange", { fg = p.burnt_orange })
hi("DiffDelete", { fg = p.red })
hi("DiffText",   { fg = p.burnt_orange, bold = true })

-- Indent guides
hi("IblIndent",  { fg = "#252123" })

-- Markup (for markdown etc.)
hi("@markup.heading",       { fg = p.warm_tan })
hi("@markup.raw.inline",    { fg = p.warm_tan })
hi("@markup.bold",          { fg = p.warm_tan, bold = true })
hi("@markup.italic",        { fg = p.warm_tan, italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.list",          { fg = p.warm_tan })
hi("@markup.quote",         { fg = p.warm_tan })
hi("@markup.link.url",      { fg = p.terracotta, underline = true })
hi("@markup.link.label",    { fg = p.terracotta })
