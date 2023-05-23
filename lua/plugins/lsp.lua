return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 5000 },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
      {
        "jay-babu/mason-null-ls.nvim",
        config = function()
          require("mason-null-ls").setup({
            handlers = {},
          })
        end,
      },
    },
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.list_extend(opts.sources, {
        nls.builtins.diagnostics.tidy,
        -- nls.builtins.formatting.prettierd,
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    dependencies = {
      -- { "jay-babu/mason-null-ls.nvim" },
    },
  },
}
