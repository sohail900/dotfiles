return {
  "nvimtools/none-ls.nvim",
  enabled = false, -- <--- disables this plugin
  opts = function(_, opts)
    local null_ls = require("null-ls")
    opts.sources = opts.sources or {}

    -- Only add forge formatter, remove diagnostics
    table.insert(
      opts.sources,
      null_ls.builtins.formatting.forge_fmt.with({
        filetypes = { "solidity" },
      })
    )
  end,
}
