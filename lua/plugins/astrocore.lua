-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    filetypes = {
      extension = {
        ejs = "embedded_template",
        gohtml = "gotmpl",
        gotmpl = "gotmpl",
        j2 = "jinja",
        jinja2 = "jinja",
        njk = "jinja",
      },
      pattern = {
        [".*/views/.*%.html"] = "embedded_template",
      },
    },
    options = {
      opt = {
        clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus",
      },
    },
    mappings = {
      n = {
        ["<Leader>w"] = { desc = "Vimwiki" },
      },
    },
  },
  ---@param opts AstroCoreOpts
  config = function(_, opts)
    local runtime_dir = vim.env.XDG_RUNTIME_DIR .. "/nvim"

    for _, dir in ipairs { "shada", "undo" } do
      vim.fn.mkdir(runtime_dir .. "/" .. dir, "p", "0700")
    end

    -- Extend AstroNvim configuration
    opts = vim.tbl_deep_extend("force", opts, {
      options = {
        opt = {
          shadafile = runtime_dir .. "/shada/main.shada",
          undodir = runtime_dir .. "/undo",
        },
      },
    })

    require("astrocore").setup(opts)
  end,
}
