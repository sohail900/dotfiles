-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Go to next diagnostic (error/warning)
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next({
    float = {
      border = "rounded", -- Optional: adds rounded border
      header = "", -- Optional: removes header
    },
    wrap = false, -- Don't wrap around file
    severity = { min = vim.diagnostic.severity.WARN }, -- Skip hints
  })
end, { desc = "Next diagnostic" })

keymap.set("n", "<C-k>", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })

-- Recursive folding functions
function _G.open_all_folds_under_cursor()
  local line = vim.fn.line(".")
  local start_fold = vim.fn.foldclosed(line)
  if start_fold == -1 then
    return
  end
  local end_fold = vim.fn.foldclosedend(line)
  for l = start_fold, end_fold do
    vim.cmd(l .. "normal! zo")
  end
end

function _G.close_all_folds_under_cursor()
  local line = vim.fn.line(".")
  local start_fold = vim.fn.foldclosed(line)
  if start_fold == -1 then
    return
  end
  local end_fold = vim.fn.foldclosedend(line)
  for l = start_fold, end_fold do
    vim.cmd(l .. "normal! zc")
  end
end

-- Keymaps
vim.keymap.set(
  "n",
  "<leader>zo",
  open_all_folds_under_cursor,
  { noremap = true, silent = true, desc = "Open all folds under cursor" }
)
vim.keymap.set(
  "n",
  "<leader>zc",
  close_all_folds_under_cursor,
  { noremap = true, silent = true, desc = "Close all folds under cursor" }
)
