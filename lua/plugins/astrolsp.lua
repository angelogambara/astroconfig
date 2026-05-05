-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- customize lsp formatting options
    formatting = {
      disabled = { -- disable formatting capabilities for the listed language servers
        -- Lua: Disabled to favor StyLua
        "lua_ls",

        -- Python: Disabled to favor Ruff, Black, or isort
        "pyright",
        "basedpyright",

        -- Web Dev: Disabled to favor Biome or Prettier
        "html",
        "cssls",
        "vtsls",
        "jsonls",
        "vue_ls",

        -- Bash: Disabled to favor shfmt
        "bashls",

        -- Misc: Disabled to favor CSharpier, Ktlint, PHPCS, StandardRB
        "csharp_ls",
        "kotlin_language_server",
        "phpactor",
        "solargraph",
      },
      timeout_ms = 3000, -- default format timeout
    },
  },
}
