return {
   {
      "nvim-treesitter/nvim-treesitter",
      tag = "v0.9.1",
      opts = {
         ensure_installed = {
            "javascript",
            "typescript",
            "tsx",
            "html",
            "css",
            "gitignore",
            "graphql",
            "http",
            "json",
            "jsonc",
            "scss",
            "sql",
            "vim",
            "lua",
            "markdown",
            "bash",
         },
         query_linter = {
            enable = true,
            use_virtual_text = true,
            lint_events = { "BufWrite", "CursorHold" },
         },
      },
   },
}
