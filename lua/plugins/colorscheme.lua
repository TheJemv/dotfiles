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
      end,
   },
   {
      "oonamo/ef-themes.nvim",
      config = function()
         require("ef-themes").setup({
            options = {
               transparency = true,
               lualine_transparency = true,
            },
         })

         vim.cmd.colorscheme("ef-dark")
      end,
   },
}
