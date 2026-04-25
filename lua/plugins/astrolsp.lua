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
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        "lua_ls",
        -- prefer biome because it aims to be the unified toolchain for webdev
        "cssls",
        "html",
        "jsonls",
        "vtsls",
        "astro",
        "svelte",
        "vue_ls",
        -- completely stop the LSP from doing any formatting
        "pyright",
        "roslyn",
        "ruby_lsp",
        "sqls",
      },
      timeout_ms = 3000, -- default format timeout
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- =======================================================================
      -- WEB DEVELOPMENT (Frontend & Tools)
      -- =======================================================================
      "html",
      "cssls",
      "tailwindcss",
      "biome", -- High-performance toolchain
      vtsls = {
        settings = {
          typescript = {
            -- This is critical: It allows TS to understand Svelte and Astro components
            pluginIds = {
              "@vue/typescript-plugin",
              "@astrojs/ts-plugin",
              "svelte-ts-plugin",
            },
            inlayHints = {
              parameterNames = { enabled = "all" },
              variableTypes = { enabled = true },
            },
          },
        },
        -- Ensure vtsls attaches to astro and svelte files for cross-file execution
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "astro", "svelte" },
      },
      volar = {
        filetypes = { "vue", "typescript", "javascript" },
      },
      astro = {
        -- Astro usually works well with the default root pattern
        root_dir = require("lspconfig.util").root_pattern("package.json", "astro.config.mjs", "tsconfig.json"),
      },

      svelte = {
        -- Svelte's LSP can be heavy. This should help it find the right project root
        root_dir = require("lspconfig.util").root_pattern("package.json", "svelte.config.js", "tsconfig.json"),
        on_attach = function(client)
          -- Optional: Svelte can be chatty with progress reports.
          -- You can disable specific capabilities here if they get annoying.
        end,
      },

      -- =======================================================================
      -- BACKEND & SYSTEM LANGUAGES
      -- =======================================================================
      "clangd",
      "roslyn", -- .NET (C#)
      "gopls",
      "rust_analyzer",
      "pyright",
      "phpactor",
      "kotlin_lsp",
      "ruby_lsp",
      "bashls",
      "sqls",
      djangols = {},

      -- =======================================================================
      -- CONFIGURATION & DATA
      -- =======================================================================
      "dockerls",
      "lemminx", -- XML
      "marksman", -- Markdown
      "taplo", -- TOML
      jsonls = {
        settings = {
          json = {
            validate = { enable = true },
          },
        },
      },
      yamlls = {
        settings = {
          yaml = {
            validate = true,
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      },
    },
    -- =======================================================================
    -- CUSTOM SERVER CONFIGURATIONS
    -- =======================================================================
    -- customize language server configuration passed to `vim.lsp.config`
    -- client specific configuration can also go in `lsp/` in your configuration root (see `:h lsp-config`)
    config = {
      -- Moved complex logic here to keep the server list clean
      biome = {
        root_dir = require("lspconfig.util").root_pattern("biome.json", "biome.jsonc"),
      },
      gopls = {
        settings = {
          gopls = {
            gofumpt = true,
            analyses = { unusedparams = true },
            staticcheck = true,
          },
        },
      },
      kotlin_lsp = {
        root_dir = require("lspconfig.util").root_pattern(
          "settings.gradle",
          "settings.gradle.kts",
          "pom.xml",
          "build.gradle",
          "build.gradle.kts"
        ),
      },
      roslyn = {
        -- Roslyn usually finds solution (.sln) files automatically,
        -- but you can specify settings here if needed.
        settings = {
          ["roslyn"] = {
            enableImportCompletion = true,
            provideSequencePoints = true,
          },
        },
      },
      ruby_lsp = {
        -- Ruby LSP needs to know where to find your bundle.
        init_options = {
          enabledFeatures = { "formatting", "diagnostics", "codeActions", "hover" },
        },
      },
      ruff = {
        -- Ensure Ruff doesn't collide with Pyright's hover info.
        on_attach = function(client) client.server_capabilities.hoverProvider = false end,
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = { command = "clippy" },
          },
        },
      },
      pyright = {
        settings = {
          pyright = {
            -- Let Ruff handle the import organization.
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
    },
  },
}
