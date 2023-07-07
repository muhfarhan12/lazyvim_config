return {
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
}
