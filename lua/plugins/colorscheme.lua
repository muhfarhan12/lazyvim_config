return {
  {
    "folke/tokyonight.nvim",
    opts = { style = "night" },
  },
  {
    "catppuccin/nvim",
    -- enabled = false,
    name = "catppuccin",
    opts = {
      -- flavour = "mocha",
      integrations = {
        treesitter = true,
        treesitter_context = true,
        illuminate = true,
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = true,
        noice = true,
        lsp_trouble = true,
        neotree = true,
        mason = true,
        which_key = true,
        leap = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
        navic = {
          enabled = false,
          custom_bg = "NONE",
        },
      },
    },
  },
  {
    "EdenEast/nightfox.nvim",
    -- enabled = false,
    opts = {
      options = {
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    -- enabled = false,
    opts = {},
  },
  {
    "rose-pine/neovim",
    enabled = false,
    name = "rose-pine",
    opts = {
      variant = "main",
    },
  },
}
