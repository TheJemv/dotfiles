return {
   -- {
   --    "sainnhe/sonokai",
   --    priority = 1000,
   --    config = function()
   --       vim.g.sonokai_transparent_background = "1"
   --       vim.g.sonokai_enable_italic = "1"
   --       vim.g.sonokai_style = "andromeda"
   --       vim.cmd.colorscheme("sonokai")
   --    end,
   -- },
   {
      "olimorris/onedarkpro.nvim",
      priority = 1000,
      config = function()
         require("onedarkpro").setup({
            options = {
               transparency = true,
               lualine_transparency = true,
            },
         })
         vim.cmd.colorscheme("onedark")
      end,
   },
   -- {
   --    "catppuccin/nvim",
   --    name = "catppuccin",
   --    priority = 1000,
   --    config = function()
   --       require("catppuccin").setup({
   --          transparent_background = true,
   --       })
   --       vim.cmd.colorscheme("catppuccin")
   --    end,
   -- },
   -- {
   --    "ellisonleao/gruvbox.nvim",
   --    config = function()
   --       require("gruvbox").setup({
   --          transparent_mode = true,
   --       })
   --
   --       vim.cmd("colorscheme gruvbox")
   --    end,
   -- },
}
