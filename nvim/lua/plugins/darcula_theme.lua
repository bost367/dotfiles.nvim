return {
  {
    "xiantang/darcula-dark.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    }
  },
  {
    "nvim-lualine/lualine.nvim",
     dependencies = { 
      "nvim-tree/nvim-web-devicons" 
     }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  { "madnight/vim-swap-lines" },
  { "powerman/vim-plugin-ruscmd" },
  { "petertriho/nvim-scrollbar" },
  { "lewis6991/gitsigns.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
}

