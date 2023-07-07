return {
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
}
