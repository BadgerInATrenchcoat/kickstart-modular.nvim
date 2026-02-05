vim.o.termguicolors = true
vim.cmd.hi 'clear'
if vim.fn.exists 'syntax_on' == 1 then vim.cmd.syntax 'reset' end
vim.g.colors_name = 'base4tone_d'

local p = {
  fg = '#eeede8',
  bg = '#21211c',
  sel_bg = '#171711',

  ui_1 = '#2c2b25', -- titlebar
  ui_2 = '#38362e', -- tabs / panels
  cursor = '#85776f',
  comment = '#85826f',

  -- kitty 16 colors (as given)
  teal = '#049582', -- color1
  orange0 = '#da6b2b', -- color2 (strong orange)
  peach1 = '#ee9968', -- color3
  gold = '#cfb617', -- color4
  lime = '#82c115', -- color5
  orange1 = '#e6854d', -- color6 (your chosen "main prompt" orange)
  white = '#eeede8', -- color7

  teal_b = '#1cc4ae', -- color9
  orange_b = '#f0a57a', -- color10
  peach_b = '#f5c1a3', -- color11
  gold_b = '#f6edb1', -- color12
  lime_b = '#95dc18', -- color13
  cyan_b = '#f2e58c', -- color14
  white_b = '#f9f8f6', -- color15
}

local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- Core UI
hi('Normal', { fg = p.fg, bg = p.bg })
hi('NormalFloat', { fg = p.fg, bg = p.ui_2 })
hi('FloatBorder', { fg = p.cursor, bg = p.ui_2 })

hi('Cursor', { fg = p.bg, bg = p.cursor })
hi('CursorLine', { bg = p.ui_1 })
hi('CursorColumn', { bg = p.ui_1 })
hi('ColorColumn', { bg = p.ui_1 })

hi('Visual', { bg = p.sel_bg })
hi('Search', { fg = p.bg, bg = p.gold_b })
hi('IncSearch', { fg = p.bg, bg = p.peach_b })

hi('LineNr', { fg = p.comment })
hi('CursorLineNr', { fg = p.gold, bold = true })

hi('Pmenu', { fg = p.fg, bg = p.ui_2 })
hi('PmenuSel', { fg = p.bg, bg = p.orange1, bold = true })
hi('PmenuSbar', { bg = p.ui_2 })
hi('PmenuThumb', { bg = p.cursor })

hi('StatusLine', { fg = p.fg, bg = p.ui_2 })
hi('StatusLineNC', { fg = p.comment, bg = p.ui_1 })
hi('WinSeparator', { fg = p.ui_2, bg = p.bg })
hi('VertSplit', { fg = p.ui_2, bg = p.bg })

hi('MatchParen', { fg = p.bg, bg = p.peach_b, bold = true })
hi('NonText', { fg = p.ui_2 })
hi('Whitespace', { fg = p.ui_2 })

-- Syntax (classic groups)
hi('Comment', { fg = p.comment, italic = true })
hi('String', { fg = p.orange1 })
hi('Character', { fg = p.orange1 })
hi('Number', { fg = p.peach1 })
hi('Boolean', { fg = p.peach1 })
hi('Float', { fg = p.peach1 })

hi('Identifier', { fg = p.fg })
hi('Function', { fg = p.gold })

hi('Statement', { fg = p.teal, bold = true })
hi('Keyword', { fg = p.teal, bold = true })
hi('Conditional', { fg = p.teal })
hi('Repeat', { fg = p.teal })
hi('Operator', { fg = p.fg })

hi('Type', { fg = p.lime })
hi('StorageClass', { fg = p.lime })
hi('Structure', { fg = p.lime })

hi('Constant', { fg = p.peach1 })
hi('PreProc', { fg = p.gold })
hi('Include', { fg = p.gold })
hi('Define', { fg = p.gold })

hi('Special', { fg = p.orange0 })
hi('Todo', { fg = p.bg, bg = p.gold, bold = true })

-- Diagnostics (no "red" in this palette, so use strong orange for errors)
hi('DiagnosticError', { fg = p.orange0 })
hi('DiagnosticWarn', { fg = p.gold })
hi('DiagnosticInfo', { fg = p.teal_b })
hi('DiagnosticHint', { fg = p.lime_b })

hi('DiagnosticUnderlineError', { undercurl = true, sp = p.orange0 })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = p.gold })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = p.teal_b })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = p.lime_b })

-- Common Treesitter links
hi('@comment', { link = 'Comment' })
hi('@string', { link = 'String' })
hi('@number', { link = 'Number' })
hi('@boolean', { link = 'Boolean' })
hi('@function', { link = 'Function' })
hi('@keyword', { link = 'Keyword' })
hi('@type', { link = 'Type' })
hi('@variable', { fg = p.fg })
hi('@property', { fg = p.fg })
hi('@punctuation', { fg = p.comment })

-- GitSigns (optional plugin)
hi('GitSignsAdd', { fg = p.lime })
hi('GitSignsChange', { fg = p.gold })
hi('GitSignsDelete', { fg = p.orange0 })
