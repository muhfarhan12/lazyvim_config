return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
      {
        "ahmedkhalf/project.nvim",
        keys = {
          { "<leader>fp", "<cmd>Telescope projects<cr>", desc = "Find Projects" },
        },
        config = function()
          require("project_nvim").setup({})
          require("telescope").load_extension("projects")
        end,
      },
      {
        "nvim-telescope/telescope-file-browser.nvim",
        keys = {
          { "<leader>fi", "<cmd>Telescope file_browser<cr>", desc = "File Browser" },
          {
            "<leader>fI",
            "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
            desc = "File Browser Current Buffer",
          },
        },
        config = function()
          require("telescope").load_extension("file_browser")
        end,
      },
    },
  },
}
