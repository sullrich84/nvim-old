--
-- Adds DAP support to LazyVim
--

return {
  { "mfussenegger/nvim-dap" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = function()
      local dap = require("dap")
      require("neodev").setup({ library = { plugins = { "nvim-dap-ui" }, types = true } })
      local nodeConfig = {
        {
          name = "Launch",
          type = "node2",
          request = "launch",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
          console = "integratedTerminal",
        },
        {
          -- For this to work you need to make sure the node process is started with the \`--inspect\` flag.
          name = "Attach to process",
          type = "node2",
          request = "attach",
          processId = require("dap.utils").pick_process,
        },
      }
      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
      }
      -- Debugger config for js
      dap.configurations.javascript = nodeConfig
    end,
    keys = function()
      local dap, dapui = require("dap"), require("dapui")
      return {
        {
          "<leader>cD",
          false,
          { name = "Debugging" },
        },
        {
          "<leader>cDd",
          function()
            dapui.toggle()
          end,
          desc = "Toggle debugger",
        },
        {
          "<leader>cDk",
          function()
            dap.continue()
          end,
          desc = "Continue",
        },
        {
          "<leader>cDl",
          function()
            dap.run_last()
          end,
          desc = "Run last",
        },
        {
          "<leader>cDb",
          function()
            dap.toggle_breakpoint()
          end,
          desc = "Toggle breakpoint",
        },
        {
          "<leader>cDc",
          function()
            dap.clear_breakpoints()
          end,
          desc = "Clear breakpoints",
        },
      }
    end,
  },
}
