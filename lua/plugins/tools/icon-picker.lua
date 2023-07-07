return {
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
}
