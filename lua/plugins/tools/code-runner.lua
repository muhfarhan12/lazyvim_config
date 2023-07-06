return {
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
}
