-- LazyVim's own "ui.alpha" extra overwrites the dashboard footer with
-- plugin-load stats right after startup. This registers our override
-- BEFORE lazy.nvim even bootstraps, so we're guaranteed to be listening
-- before "LazyVimStarted" fires (registering this in autocmds.lua is too
-- late: that file only loads on the VeryLazy event).
vim.api.nvim_create_autocmd("User", {
   pattern = "LazyVimStarted",
   callback = function()
      vim.defer_fn(function()
         local ok, dashboard = pcall(require, "alpha.themes.dashboard")
         if ok then
            dashboard.section.footer.val = "Money never sleeps..."
            pcall(vim.cmd.AlphaRedraw)
         end
      end, 50)
   end,
})

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
