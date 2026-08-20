return {
   "nvimdev/lspsaga.nvim",
   event = { "BufReadPre", "BufNewFile" },
   dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
   },
   opts = {
      scroll_preview = {
         scroll_down = "<C-h>",
         scroll_up = "<C-l>",
      },
      finder = {
         keys = {
            edit = "<CR>",
         },
      },
      definition = {
         keys = {
            edit = "<CR>",
         },
      },
      symbol_in_winbar = {
         enable = true,
         separator = "  ",
         show_file = false,
         folder_level = 0,
      },
      lightbulb = {
         enable = false,
         sign = false,
      },
      ui = {
         theme = "round",
         border = "rounded",
         expand = "",
         collapse = "",
         code_action = "👾",
         lines = { "└", "├", "│", "─", "┌" },
      },
      outline = {
         win_width = 35,
      },
   },
}
