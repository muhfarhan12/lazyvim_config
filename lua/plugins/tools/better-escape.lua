return {
  "max397574/better-escape.nvim",
  keys = {
    { "jj", mode = "i" },
    { "jk", mode = "i" },
  },
  opts = {
    mapping = { "jk", "jj" },
    timeout = vim.o.timeoutlen,
    clear_empty_lines = true,
    keys = "<Esc>",
  },
}
