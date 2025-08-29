return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "tabs",
      },
    })
    vim.keymap.set("n", "<A-l>", "<cmd>BufferLineCycleNext<CR>", { silent = true, desc = "Next buffer" })
    vim.keymap.set("n", "<A-h>", "<cmd>BufferLineCyclePrev<CR>", { silent = true, desc = "Prev buffer" })
  end,
}
