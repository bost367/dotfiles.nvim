return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
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
