return {
  "nvim-neorg/neorg",
  -- enabled = false,
  build = ":Neorg sync-parsers",
  ft = { "norg", "neorg" },
  cmd = { "Neorg" },
  opts = {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = "~/neorg/notes",
            journal = "~/neorg/journal",
            belajar = "~/neorg/belajar",
          },
        },
      },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
        },
      },
      ["core.integrations.nvim-cmp"] = {},
      ["core.journal"] = {
        config = {
          workspace = "journal",
          journal_folder = "",
        },
      },
      ["core.integrations.treesitter"] = {},
      ["core.summary"] = {},
    },
  },
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    -- { "jubnzv/mdeval.nvim" },
  },
}
