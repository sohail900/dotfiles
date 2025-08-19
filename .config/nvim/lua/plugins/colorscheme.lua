return {
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1" -- Transparent background
      vim.g.sonokai_style = "andromeda" -- Theme variant
      vim.g.sonokai_enable_italic = "1" -- Enable italics globally
      vim.cmd.colorscheme("sonokai")

      -- Force italics for specific syntax groups
      vim.cmd([[
        " Comments
        highlight Comment cterm=italic gui=italic

        " Functions & Methods
        highlight Function cterm=italic gui=italic
        highlight Identifier cterm=italic gui=italic

        " Keywords (import, export, return, async, await, etc.)
        highlight Keyword cterm=italic gui=italic
        highlight Statement cterm=italic gui=italic
        highlight Conditional cterm=italic gui=italic
        highlight Repeat cterm=italic gui=italic
        highlight Label cterm=italic gui=italic
        highlight Operator cterm=italic gui=italic
        highlight Exception cterm=italic gui=italic

        " TypeScript / JavaScript specific keywords
        highlight @keyword.import cterm=italic gui=italic
        highlight @keyword.export cterm=italic gui=italic
        highlight @keyword.return cterm=italic gui=italic
        highlight @function cterm=italic gui=italic
        highlight @method cterm=italic gui=italic
        highlight @variable.builtin cterm=italic gui=italic

        " LSP Diagnostics (errors, warnings, info, hints)
        highlight DiagnosticError cterm=italic gui=italic
        highlight DiagnosticWarn cterm=italic gui=italic
        highlight DiagnosticInfo cterm=italic gui=italic
        highlight DiagnosticHint cterm=italic gui=italic

        " Underline diagnostics but keep italic
        highlight DiagnosticUnderlineError cterm=italic,underline gui=italic,underline
        highlight DiagnosticUnderlineWarn cterm=italic,underline gui=italic,underline
        highlight DiagnosticUnderlineInfo cterm=italic,underline gui=italic,underline
        highlight DiagnosticUnderlineHint cterm=italic,underline gui=italic,underline
      ]])
    end,
  },
}
