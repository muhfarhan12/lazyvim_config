return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        width = 30,
      },
    },
  },
  -- {
  --   "kevinhwang91/nvim-ufo",
  --   dependencies = "kevinhwang91/promise-async",
  --   event = "BufReadPost",
  --   opts = {
  --     -- provider_selector = function(bufnr, filetype, buftype)
  --     --   return { "treesitter", "indent" }
  --     -- end,
  --     provider_selector = function(_, filetype, buftype)
  --       return (filetype == "" or buftype == "nofile") and "indent" -- only use indent until a file is opened
  --         or { "treesitter", "indent" } -- if file opened, try to use treesitter if available
  --     end,
  --   },
  --   init = function()
  --     vim.o.foldcolumn = "1" -- '0' is not bad
  --     vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
  --     vim.o.foldlevelstart = 99
  --     vim.o.foldenable = true
  --     -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
  --     vim.keymap.set("n", "zR", require("ufo").openAllFolds)
  --     vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
  --   end,
  -- },
}
