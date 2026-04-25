-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  dependencies = {
    {
      "ellisonleao/gruvbox.nvim",
      priority = 1000,
      config = function()
        ---@diagnostic disable-next-line: missing-fields
        require("gruvbox").setup {
          styles = {
            contrast = "hard", -- use a darker bg
          },
        }
      end,
    },
  },
  opts = {
    -- change colorscheme
    colorscheme = "gruvbox",
  },
}
