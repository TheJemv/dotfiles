-- Customizes the dashboard provided by LazyVim's own "ui.alpha" extra
-- (imported in lua/config/lazy.lua). We build on top of it instead of
-- replacing it wholesale, so LazyVim's own integrations (like the
-- "Projects" button it adds automatically) keep working correctly.
--
-- NOTE: buttons use Snacks (picker/explorer) commands, not Telescope or
-- nvim-tree, because those plugins aren't installed in this config.
return {
   "goolord/alpha-nvim",
   dependencies = {
      "MaximilianLloyd/ascii.nvim",
   },
   opts = function(_, dashboard)
      local ascii = require("ascii")

      dashboard.section.header.val = ascii.art.movies.toystory.little_green_men
      dashboard.section.header.opts.hl = "Include"

      dashboard.section.buttons.val = {
         dashboard.button("h", "󰄉  Recents", ":lua Snacks.picker.recent()<CR>"),
         dashboard.button("y", "  Explore", ":lua Snacks.explorer()<CR>"),
         dashboard.button("/", "  Ripgrep", ":lua Snacks.picker.grep()<CR>"),
         dashboard.button("P", "󰂖  Plugins", ":Lazy<CR>"),
      }
      for _, button in ipairs(dashboard.section.buttons.val) do
         button.opts.hl = "Keyword"
         button.opts.hl_shortcut = "AlphaShortcut"
      end

      dashboard.section.footer.val = "Money never sleeps..."
      return dashboard
   end,
}
