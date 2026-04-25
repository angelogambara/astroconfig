return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      -- 1. General Purpose
      ["_"]       = { "trim_whitespace", "trim_trailing_lines" },
      lua         = { "stylua" },
      asm         = { "asmfmt" },
      c           = { "clang-format" }, -- NOTE: run clang-format -style=llvm -dump-config >| .clang-format
      cpp         = { "clang-format" }, -- NOTE: run clang-format -style=llvm -dump-config >| .clang-format
      cs          = { "csharpier" },

      -- 2. Shell Scripting
      sh          = { "shfmt" },
      bash        = { "shfmt" },
      zsh         = { "shfmt" },

      -- 3. Web Development
      javascript  = { "biome" }, -- NOTE: run npx @biomejs/biome init
      typescript  = { "biome" }, -- NOTE: run npx @biomejs/biome init
      json        = { "biome" }, -- NOTE: run npx @biomejs/biome init
      css         = { "biome" }, -- NOTE: run npx @biomejs/biome init
      html        = { "biome" }, -- NOTE: run npx @biomejs/biome init
      htmldjango  = { "djlint" },
      python      = { "ruff_organize_imports", "ruff_format" },
      kotlin      = { "ktlint" },
      ruby        = { "rubocop" },
      toml        = { "taplo" },
      sql         = { "sql-formatter" },
      php         = { "pint" },
      go          = { "gofumpt" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
