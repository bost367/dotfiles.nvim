return {
  link = "#548AF7", -- url or open new window
  hint_text = "#6F737A",
  hint_text_special = "#9B9DA5",
  editor = {
    background = "#191A1C",
    foreground = "#BCBEC4",
    separator = "#313438", -- split dark windows
    cursor_line = "#26282E",
    selected_area = "#214283",
    current_match = "#214283",
    matching_text = "#114957",
    fold = {
      bg = "#393B40",
      fg = "#868991",
    },
    diagnostic = {
      ok = "#5B9761",
      error = "#FA6675",
      error_message = "#BC5460",
      warn = "#F2C55C",
      warn_message = "#AC914B",
      weak_warn = "#857042",
      weak_warn_messag = "#7A7E85",
      info = "#3592C4",
      unnecessary = "#6F737A",
      spell = "#7EC482",
    },
    scope = {
      indent_scope = "#64676F",
      same_token = "#373B39",
      read_variable = "#373B39",
      write_variable = "#402F33",
    },
  },
  gutter_bar = {
    line_number = "#4B5059",
    cursor_line_fg = "#A1A3AB",
    cursor_line_bg = "#26282E",
    vcs = {
      added_line = "#539258",
      changed_line = "#52423D",
      changed_delete_line = "#375FAD",
      deleted_line = "#868A91",
    },
  },
  scroll_bar = {
    background = "#464648",
    vcs = {
      added_line = "#437151",
      changed_line = "#42698D",
      deleted_line = "#656E76",
    },
    diagnostic = {
      error = "#D64C5B",
      warn = "#C29E49",
    },
  },
  file_manager = {
    vcs = {
      added_file = "#629755",
      modified_file = "#6897BB",
      deleted_file = "#6C6C6C",
      ignored_file = "#848504",
      merged_file = "#9876AA",
      staged_file = "#DF8984",
      untracked_file = "#D1675A",
      merge_conflict_file = "#D5756C",
    },
  },
  interface = {
    background = "#191A1C",
    foreground = "#DFE1E5",
    search_select = "#BA9752",
    cursor_line = "#2E436E",
    active_element = "#3474F0", -- blue
    button = "#2B2D30",
    statusbar = "#25272A",
  },
  search = {
    match_in_preview = "#2D5436",
  },
  autocomplete = {
    background = "#2B2D30",
    foreground = "#B3B7BE",
    match = "#538AFA",
  },
  syntax = {
    default = {
      foreground = "#BCBEC4",
      string = "#6AAB73",
      keyword = "#CF8E6D",
      number = "#2AACB8",
      function_declaration = "#56A8F5",
      function_call = "#BCBEC4",
      property = "#C77DBB",
      constant = "#C77DBB",
      metadata = "#B3AE60",
      generic = "#16BAAC",
      struct = "#BCBEC4",
      local_variable = "#BCBEC4",
      label = "#32B8AF",
      comment = "#7A7E85",
      comment_documentation = "#5F826B",
      comment_todo = "#8BB33D",
      inline_hint_bg = "#2D2E32",
      inline_hint_fg = "#868A91",
    },
    rust = {
      lifetime = "#20999D",
      macros_functional = "#FFC66D",
      unsafe = "#4D3E3E",
    },
    yaml = {
      anchor = "#E8BF6A",
    },
    diff = {
      added = "#294436",
      changed = "#283541",
      changed_important = "#385570",
      deleted = "#484A4A",
    },
    bash = {
      cli_call = "#C57633",
    },
    ts = {
      local_variable = "#A9B7C6",
      generic = "#507874",
    },
    regexp = {
      escape = "#B2AE60",
    },
    markup = {
      code_block = "#293C40",
    },
    python = {
      builtin = "#8888C6", -- types and functions e.g. 'int', 'len("foo")'
      parameter = "#AA4926",
      dunder = "#B200B2",
    },
  },
  icons = {
    default = "#CED0D6", -- almost any icon: gradle, git, services etc.
    json = "#B589EC",
    md = "#548AF7",
    yaml = "#DB5C5C",
    yml = "#DB5C5C",
  },
}
