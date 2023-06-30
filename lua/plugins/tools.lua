return {
  --neorg
  {
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
      },
    },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      -- { "jubnzv/mdeval.nvim" },
    },
  },
  --code_runner
  {
    "CRAG666/code_runner.nvim",
    cmd = "RunCode",
    dependencies = "nvim-lua/plenary.nvim",
    keys = {
      { "<leader>cc", "<cmd>RunCode<cr>", desc = "Run Code" },
    },
    opts = {
      mode = "float",
      focus = true,
      startinsert = true,
      float = {
        close_key = "<ESC>",
        border = "single",
      },
      filetype = {
        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
        python = "python3 -u",
        typescript = "deno run",
        rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      },
    },
  },

  --better escape
  {
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
  },
  -- sniprun
  {
    "michaelb/sniprun",
    enabled = false,
    build = "bash ./install.sh",
    cmd = {
      "SnipRun",
      "SnipInfo",
    },
    -- ft = { "norg", "neorg", "python" },
    opts = {
      selected_interpreters = { "Python3_fifo" },
      repl_enable = { "Python3_fifo" },
    },
  },

  -- overseer
  {
    "stevearc/overseer.nvim",
    enabled = false,
    cmd = {
      "OverseerRun",
      "OverseerToggle",
    },
    opts = {
      strategy = 'require("lazy.util").float_term(cmd, opts)',
      templates = { "builtin", "user.run_script" },
    },
  },
  {
    "m4xshen/smartcolumn.nvim",
    event = { "BufNewFile", "BufReadPost" },
    opts = {
      disabled_filetypes = { "NvimTree", "Lazy", "mason", "help", "neo-tree", "alpha" },
    },
  },
  --code evaluation
  -- {
  --   "jubnzv/mdeval.nvim",
  --   ft = { "norg" },
  --   config = function()
  --     require("mdeval").setup()
  --   end,
  -- },
  -- vim-matchup alternative native matchit and matchparent
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    config = function()
      -- may set any options here
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },

  {
    "ziontee113/icon-picker.nvim",
    event = { "BufReadPost", "BufNewFile" },
    keys = {
      { "<C-i>", "<cmd>IconPickerInsert<cr>", mode = "i" },
    },
    dependencies = {
      "stevearc/dressing.nvim",
    },
    opts = {
      disable_legacy_commands = true,
    },
  },
}
