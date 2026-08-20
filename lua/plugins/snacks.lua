return {
   {
      "folke/snacks.nvim",
      opts = {
         -- using alpha-nvim as the startup dashboard instead
         dashboard = { enabled = false },
         picker = {
            sources = {
               -- <leader><space> = "Find Files (Root Dir)" uses this source
               files = {
                  exclude = { "node_modules" },
               },
               -- text search (<leader>/, <leader>sg, etc.)
               grep = {
                  exclude = { "node_modules" },
               },
               -- the file explorer sidebar
               explorer = {
                  exclude = { "node_modules" },
               },
            },
         },
      },
   },
}
