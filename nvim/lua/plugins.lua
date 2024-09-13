return {
  -- JetBrains Darcula Theme  
  {
    "xiantang/darcula-dark.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    }
  },
  -- Status bar
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 
        "nvim-tree/nvim-web-devicons" 
    }
  },
  -- Vertical lines between brackets in editor
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
  },
  { "madnight/vim-swap-lines" },            -- Swap lines in text editor
  { "powerman/vim-plugin-ruscmd" },         -- Support commands on RUS keyboard
  { "petertriho/nvim-scrollbar" },          -- Vertical scrollbar in editor
  { "lewis6991/gitsigns.nvim" },            -- Git status (added, removed, etc.)
  { "nvim-treesitter/nvim-treesitter" },    -- Better syntax highlighting
  -- LSP support
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  -- Rust LSP Support
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
  },
  { 
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "onsails/lspkind.nvim",
  }
}

