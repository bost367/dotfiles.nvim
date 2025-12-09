return {
  "mfussenegger/nvim-dap",
  lazy = false,
  keys = {
    {
      "<D-F8>",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<C-\\>",
      function()
        require("dap").continue()
      end,
      desc = "Next breakpoint",
    },
    {
      "<D-'>",
      function()
        require("dap").step_over()
      end,
      desc = "Step over",
    },
    {
      "<D-;>",
      function()
        require("dap").step_into()
      end,
      desc = "Step into",
    },
    {
      "<D-\\>",
      function()
        require("dap").step_out()
      end,
      desc = "Step out",
    },
    -- {
    --   "<C-S-'",
    --   function()
    --     require("dap").terminate()
    --   end,
    --   desc = "Terminate",
    -- },
  },
}
