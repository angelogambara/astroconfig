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
        "astro",
        "bash",
        "blade",
        "c",
        "c_sharp",
        "cpp",
        "css",
        "diff",
        "dockerfile",
        "embedded_template",
        "gitignore",
        "glimmer",
        "go",
        "gomod",
        "gosum",
        "gotmpl",
        "html",
        "htmldjango",
        "java",
        "javascript",
        "json",
        "jsx",
        "kotlin",
        "markdown",
        "markdown_inline",
        "php",
        "python",
        "query",
        "regex",
        "ruby",
        "rust",
        "sql",
        "svelte",
        "toml",
        "tsx",
        "typescript",
        "vue",
        "xml",
        "yaml",
      },
    },
  },
}
