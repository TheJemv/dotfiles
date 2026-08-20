-- custom lualine "extensions": change the statusline for special buffer types
local extension_lspinfo = {
   sections = {
      lualine_a = { function()
         return "LspInfo"
      end },
   },
   filetypes = { "lspinfo" },
}

local extension_saga = {
   sections = {
      lualine_a = {
         function()
            local filetype = vim.bo.filetype
            local action = filetype:match("saga(%a+)")
            return "Saga" .. (action and action:gsub("^%l", string.upper) or "")
         end,
      },
   },
   filetypes = { "sagaoutline", "sagafinder" },
}

local extension_dashboard = {
   sections = {
      lualine_a = { function()
         return "BTW bitch."
      end },
   },
   filetypes = { "alpha" },
}

return {
   {
      "nvim-lualine/lualine.nvim",
      event = "VeryLazy",
      dependencies = {
         "folke/noice.nvim",
         "nvim-tree/nvim-web-devicons",
         "olimorris/onedarkpro.nvim",
      },
      config = function()
         local noice = require("noice")
         local lazy_status = require("lazy.status")

         require("lualine").setup({
            options = {
               theme = "onedark",
               globalstatus = true,
               component_separators = { left = "", right = "" },
               section_separators = { left = "", right = "" },
               disabled_filetypes = { "dashboard", "packer", "help" },
               ignore_focus = {},
            },

            sections = {
               lualine_a = { "progress" },
               lualine_b = {
                  {
                     "branch",
                     icon = "",
                     padding = { left = 1, right = 1 },
                  },
               },
               lualine_c = {
                  {
                     "filetype",
                     icon_only = true,
                     padding = { left = 2, right = 0 },
                     color = "_lualine_c_filetype",
                  },
                  {
                     "filename",
                     file_status = true,
                     path = 1,
                     symbols = {
                        unnamed = "",
                        readonly = "",
                        modified = "",
                     },
                     padding = { left = 1 },
                     color = { gui = "bold" },
                  },
               },
               lualine_x = {
                  {
                     lazy_status.updates,
                     cond = lazy_status.has_updates,
                  },
                  {
                     "diff",
                     colored = true,
                     padding = { right = 2 },
                     symbols = {
                        added = "+",
                        modified = "|",
                        removed = "-",
                     },
                  },
                  {
                     noice.api.statusline.mode.get,
                     cond = noice.api.statusline.mode.has,
                  },
               },
               lualine_y = {},
               lualine_z = { "location" },
            },

            extensions = {
               "mason",
               "quickfix",
               "man",
               "lazy",
               -- custom extensions
               extension_lspinfo,
               extension_saga,
               extension_dashboard,
            },
         })
      end,
   },
}
