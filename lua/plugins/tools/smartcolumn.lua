return {
  "m4xshen/smartcolumn.nvim",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    disabled_filetypes = {
      "NvimTree",
      "Lazy",
      "mason",
      "help",
      "neo-tree",
      "alpha",
    },
  },
}
