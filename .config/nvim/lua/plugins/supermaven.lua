return {
  {
    "supermaven-inc/supermaven-nvim",
    event = "InsertEnter",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<Tab>",
          clear_suggestion = "<C-]>",
          next_suggestion = "<C-l>",
          prev_suggestion = "<C-h>",
        },
      })
    end,
  },
}
-- this is the default config for supermaven
