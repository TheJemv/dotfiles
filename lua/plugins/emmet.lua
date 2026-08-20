return {
   {
      "mattn/emmet-vim",
      ft = { "html", "css", "javascriptreact", "typescriptreact", "vue", "svelte" },
      init = function()
         vim.g.user_emmet_mode = "a" -- enable Emmet everywhere
         vim.g.user_emmet_leader_key = ";" -- change leader if you want
      end,
   },
}
