local util = require "util"

vim.g.fzf_layout = {window = {width = 0.8, height = 0.8}}

util.noremap("n", "<space>r", "<cmd>Rg<cr>", {silent = true})
util.noremap("n", "<space>,", "<cmd>History:<cr>", {silent = true})
util.noremap("n", "<space>/", "<cmd>History/<cr>", {silent = true})
util.noremap("n", "<space>h", "<cmd>Helptags<cr>", {silent = true})
util.noremap("n", "<space>i", "<cmd>History<cr>", {silent = true})
util.noremap("n", "<space>b", "<cmd>Buffers<cr>", {silent = true})

-- Search for files at dirvish directory, otherwise, executes :Files
-- normally
util.noremap(
  "n",
  "<space>f",
  "'<cmd>Files ' . (&ft ==# 'dirvish' ? fnamemodify(expand('%'), ':~:h') : '') . '<cr>'",
  {silent = true, expr = true}
)

util.noremap(
  "n",
  "<space>g",
  "':GLFiles ' . (&ft ==# 'dirvish' ? fnamemodify(expand('%'), ':~:h') : '') . '<cr>'",
  {silent = true, expr = true}
)
