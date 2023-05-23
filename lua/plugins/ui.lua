return {
  {
    "folke/noice.nvim",
    enabled = true,
    opts = {
      cmdline = {
        enabled = false,
        view = "cmdline",
      },
      popupmenu = {
        enabled = false,
        backend = "cmp",
      },
      messages = {
        enabled = false,
      },
    },
  },
  -- {
  --   "rcarriga/nvim-notify",
  --   enabled = false,
  -- },
  {
    "akinsho/bufferline.nvim",
    opts = {
      -- highlights = require("catppuccin.groups.integrations.bufferline").get(),
      options = {
        separator_style = "slant",
      },
    },
  },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     options = {
  --       theme = "catppuccin",
  --       -- ... the rest of your lualine config
  --     },
  --   },
  -- },
}
