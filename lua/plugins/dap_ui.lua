return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio",
  },
  keys = {
    {
      "<leader>5",
      function()
        require("dapui").toggle()
      end,
      desc = "Toggle DAP interface",
    },
  },
  opts = {
    controls = {
      icons = {
        disconnect = "󱘖",
        pause = "󰏤",
        play = "",
        run_last = "",
        step_back = "",
        step_into = "󰆹",
        step_out = "",
        step_over = "",
        terminate = "",
      },
    },
    icons = {
      collapsed = "",
      current_frame = "",
      expanded = "",
    },
    layouts = {
      {
        elements = {
          {
            id = "stacks",
            size = 0.25,
          },
          {
            id = "breakpoints",
            size = 0.25,
          },
          {
            id = "scopes",
            size = 0.25,
          },
          {
            id = "watches",
            size = 0.25,
          },
        },
        position = "left",
        size = 60,
      },
      {
        elements = {
          {
            id = "repl",
            size = 0.5,
          },
          {
            id = "console",
            size = 0.5,
          },
        },
        position = "bottom",
        size = 12,
      },
    },
  },
}
