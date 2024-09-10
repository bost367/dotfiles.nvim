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

