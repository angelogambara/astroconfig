return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  ---@module "conform"
  ---@type conform.setupOpts
  opts = {
    formatters_by_ft = {
      ["_"] = { "trim_whitespace", "trim_trailing_lines" },
      lua = { "stylua" },
      asm = { "asmfmt" },
      c   = { "clang-format" },
      cpp = { "clang-format" },
      go = { "gofumpt" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },
}
