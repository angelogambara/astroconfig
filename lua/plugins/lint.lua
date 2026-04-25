-- Linting

---@module "lazy"
---@type LazySpec
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require "lint"
    lint.linters_by_ft = {
      -- 1. Web Development
      javascript    = { "biome", "eslint" }, -- TODO: npm install -D eslint-config-biome
      typescript    = { "biome", "eslint" }, -- TODO: npm install -D eslint-config-biome
      css           = { "biome" },
      json          = { "biome" },
      html          = { "biome" },
      htmldjango    = { "djlint" },
      markdown      = { "markdownlint" },
      python        = { "ruff" }, -- TODO: create a pyproject.toml template
      kotlin        = { "ktlint" },
      toml          = { "taplo" },
      sql           = { "sqlfluff" }, -- TODO: create a .sqlfluff  template
      php           = { "phpcs" },
      go            = { "golangci-lint" }, -- TODO: create a .golangci.yml template

      -- 2. Shell Scripting
      sh            = { "shellcheck" },
      bash          = { "shellcheck" },
      zsh           = { "shellcheck" },
    }

    -- Create autocommand which carries out the actual linting
    -- on the specified events.
    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        -- Only run the linter in buffers that you can modify in order to
        -- avoid superfluous noise, notably within the handy LSP pop-ups that
        -- describe the hovered symbol using Markdown.
        if vim.bo.modifiable then lint.try_lint() end
      end,
    })
  end,
}
