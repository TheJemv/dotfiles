return {
   -- Auto-close and auto-rename JSX/TSX tags (huge quality-of-life win for React / React Native)
   {
      "windwp/nvim-ts-autotag",
      event = { "BufReadPre", "BufNewFile" },
      opts = {},
   },

   -- Better JS/TS/JSX syntax + import sorting helpers
   {
      "nvim-treesitter/nvim-treesitter-textobjects",
      event = "VeryLazy",
   },

   -- Quality-of-life for package.json (React Native / Expo projects live in this file)
   {
      "vuki656/package-info.nvim",
      dependencies = "MunifTanjim/nui.nvim",
      ft = "json",
      config = function()
         require("package-info").setup()
      end,
   },

   -- Make sure Tailwind/NativeWind class completion also covers RN files
   {
      "neovim/nvim-lspconfig",
      opts = {
         servers = {
            tailwindcss = {
               filetypes = {
                  "html",
                  "css",
                  "javascript",
                  "javascriptreact",
                  "typescript",
                  "typescriptreact",
               },
               settings = {
                  tailwindCSS = {
                     experimental = {
                        classRegex = {
                           { "cva\\(([^)]*)\\)", "[\"'`]([^\"'`]*).*?[\"'`]" },
                           { "cx\\(([^)]*)\\)", "(?:'|\"|`)([^']*)(?:'|\"|`)" },
                        },
                     },
                  },
               },
            },
         },
      },
   },
}
