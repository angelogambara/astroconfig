if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter
-- --------------------
-- Treesitter customizations are handled with AstroCore
-- as nvim-treesitter simply provides a download utility for parsers

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      highlight = true, -- enable/disable treesitter based highlighting
      indent = true, -- enable/disable treesitter based indentation
      auto_install = true, -- enable/disable automatic installation of detected languages
      ensure_installed = {
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        -- add more arguments for adding more treesitter parsers
        "asm",
        "csv",
        "desktop",
        "diff",
        "embedded_template",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "glimmer",
        "glimmer_javascript",
        "glimmer_typescript",
        -- "gotmpl",
        "graphql",
        "htmldjango",
        -- "javadoc",
        -- "jsdoc",
        -- "jsx",
        "jinja",
        "jinja_inline",
        "objdump",
        "query",
        "regex",
        -- "zsh",
      },
    },
  },
}
