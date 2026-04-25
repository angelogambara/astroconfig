-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.o.clipboard = vim.env.SSH_CONNECTION and "" or "unnamedplus"

local runtime_dir = vim.env.XDG_RUNTIME_DIR .. "/nvim"
local shada_dir = runtime_dir .. "/shada"
local shada_file = shada_dir .. "/main.shada"
local undo_dir = runtime_dir .. "/undo"

vim.fn.mkdir(shada_dir, "p", "0700")
vim.fn.mkdir(undo_dir, "p", "0700")

vim.o.shadafile = shada_file
vim.o.undodir = undo_dir

vim.filetype.add {
  pattern = {
    [".*/views/.*%.html"] = "embedded_template",
  },
  extension = {
    ejs = "embedded_template",
  },
}
