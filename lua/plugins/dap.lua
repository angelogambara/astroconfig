return {
  "mfussenegger/nvim-dap",
  dependencies = {
    {
      "jay-babu/mason-nvim-dap.nvim",
      opts = {
        ensure_installed = { "kotlin" },
      },
    },
  },
  config = function()
    require "astronvim.plugins.configs.nvim-dap"()

    local dap = require "dap"

    dap.adapters.kotlin = {
      type = "executable",
      command = "kotlin-debug-adapter",
      options = {
        auto_continue_if_many_stopped = true,
        initialize_timeout_ms = 5000,
      },
    }

    dap.configurations.kotlin = {
      {
        type = "kotlin",
        request = "launch",
        name = "Launch Main Class",
        mainClass = function() return vim.fn.input("Main class:", "com.example.AppKt") end,
        projectRoot = "${workspaceFolder}",
        jsonEncodedStackTrace = true,
      },
      {
        type = "kotlin",
        request = "attach",
        name = "Attach to Remote Process",
        hostName = "localhost",
        port = 5005,
        timeout = 1000,
        projectRoot = "${workspaceFolder}",
      },
    }
  end,
}
