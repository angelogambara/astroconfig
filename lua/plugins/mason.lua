-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "bash-language-server",
        "clangd",
        "css-lsp",
        "django-language-server",
        "docker-language-server",
        "gopls",
        "html-lsp",
        "intelephense",
        "kotlin-lsp",
        "json-lsp",
        "lemminx",
        "lua-language-server",
        "marksman",
        "pyright",
        -- NOTE: temporarily disabled
        -- "roslyn",
        -- NOTE: temporarily disabled
        -- "ruby_lsp",
        "rust-analyzer",
        "sqls",
        "tailwindcss-language-server",
        "taplo",
        "vtsls",
        "vue-language-server",
        "yaml-language-server",

        -- install debuggers
        "codelldb",
        "debugpy",
        "delve",
        "kotlin-debug-adapter",

        -- install linters
        "biome",
        "eslint_d",
        "djlint",
        "ktlint",
        "ruff",
        "sqlfluff",
        "phpcs",
        "golangci-lint",
        "markdownlint",
        "shellcheck",
        "taplo",

        -- install formatters
        "asmfmt",
        "clang-format",
        -- NOTE: temporarily disabled
        -- "csharpier",
        "gofumpt",
        "shfmt",
        "stylua",
        "biome",
        "djlint",
        "ruff",
        "sql-formatter",
        "php-cs-fixer",
        -- NOTE: temporarily disabled
        -- "pint",
        -- NOTE: temporarily disabled
        -- "standardrb",
        "taplo",
      },
    },
  },
}
