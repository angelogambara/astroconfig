-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-mini/mini.icons",
  },
  cmd = { "Neotree" },
  keys = {
    { "\\", ":Neotree toggle<CR>", desc = "Open Neo-tree", silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded",
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
      },
      follow_current_file = { enabled = true },
      -- Update the tree if a file changes
      use_libuv_file_watcher = true,
      window = {
        width = 30,
        mappings = {
          ["\\"] = "close_window",
          ["<space>"] = "none", -- Prefer leader key
          ["H"] = "toggle_hidden",
          ["L"] = "focus_preview", -- Rebind key and avoid :bnext
          ["h"] = "close_node",
          ["l"] = "open",
          -- Bring some git_status mappings to filesystem
          ["gu"] = "git_unstage_file",
          ["gU"] = "git_undo_last_commit",
          ["ga"] = "git_add_file",
          ["gr"] = "git_revert_file",
          ["gc"] = "git_commit",
          ["gp"] = "git_push",
        },
      },
    },
  },
}
