return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    {
      "ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Find files",
    },
    {
      "fif",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Find in files",
    },
    {
      "fif",
      function()
        require("fzf-lua").grep_visual()
      end,
      mode = "v",
      desc = "Find visual selection in files",
    },
    {
      "fo",
      function()
        require("fzf-lua").lsp_workspace_symbols()
      end,
      desc = "Find workspace symb[o]ls",
    },
    {
      "gD",
      function()
        require("fzf-lua").lsp_declarations()
      end,
      desc = "Go to [D]eclarations (e.g. interface method)",
    },
    {
      "gI",
      function()
        require("fzf-lua").lsp_implementations()
      end,
      desc = "Go to [I]mplementation",
    },
    {
      "gr",
      function()
        require("fzf-lua").lsp_references({ ignore_current_line = true })
      end,
      desc = "Go to references",
    },
    {
      "gd",
      function()
        require("fzf-lua").lsp_definitions({ ignore_current_line = true })
      end,
      desc = "Go to references",
    },
    {
      "<M-CR>",
      function()
        require("fzf-lua").lsp_code_actions()
      end,
      desc = "LSP code action",
    },
    {
      "fd",
      function()
        require("fzf-lua").diagnostics_workspace()
      end,
      desc = "Find diagnostics",
    },
  },
  opts = {
    previewers = {
      codeaction_native = {
        pager = [[delta --width=$COLUMNS --hunk-header-style="omit" --file-style="omit"]],
      },
    },
    winopts = {
      backdrop = 100,
      preview = {
        title = false,
        layout = "vertical",
        vertical = "down:70%",
      },
    },
    files = {
      cwd_header = false,
      cwd_prompt = false,
      follow = true,
      formatter = "path.filename_first",
    },
    lsp = {
      code_actions = {
        prompt = "  ",
        previewer = "codeaction_native",
      },
    },
    grep = {
      RIPGREP_CONFIG_PATH = vim.env.RIPGREP_CONFIG_PATH,
    },
  },
}
