return {
  icon = "#CED0D6", -- almost any icon: gradle, git, services etc.
  link = "#56A8F5", -- url or open new window
  hint_text = "#6F737A",
  -- dirty_blue = "#2E436E", -- same as coursor line
  editor = {
    background = "#1E1F22",
    foreground = "#BCBEC4",
    separator = "#393B40", -- split dark windows
    cursor_line = "#26282E",
    selected_area = "#214283",
    current_match = "#214283",
    matching_text = "#124957",
    under_corsour = "#373B39",
    fold = {
      bg = "#393B41",
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
  },
  gutter_bar = {
    line_number = "#4B5059",
    cursor_line_fg = "#A1A3AB",
    cursor_line_bg = "#26282E",
    vcs = {
      added_line = "#549159",
      changed_line = "#52423D",
      changed_delete_line = "#375FAD",
      deleted_line = "#868A91",
    },
  },
  scroll_bar = {
    background = "#464648",
    vcs = {
      added_line = "#447152",
      changed_line = "#43698D",
      deleted_line = "#656E76",
    },
    diagnostic = {
      error = "#D54D5B",
      warn = "#F2C55C",
    },
  },
  file_manager = {
    vcs = {
      added_file = "#629755",
      modified_file = "#6897BB",
      deleted_file = "#6C6C6C",
      ignored_file = "#848504",
      merged_file = "#9876AA",
      staged_file = "#Df8984",
      untracked_file = "#D1675A",
      merge_conflict_file = "#D5756C",
    },
  },
  interface = {
    background = "#2B2D30",
    foreground = "#DFE1E5",
    search_select = "#BA9752",
    cursor_line = "#2E436E",
    active_element = "#3574F1", -- blue
  },
  syntax = {
    default = {
      foreground = "#BCBEC4",
      string = "#6AAB73",
      keyword = "#CF8E6D",
      number = "#2AACB8",
      function_decaration = "#00AAFF",
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
      macro = "#FFC66D",
      unsafe = "#4D3E3E",
    },
    diff = {
      added = "#294436",
      changed = "#283541",
      changed_important = "#385570",
      deleted = "#484A4A",
    },
    bash = {
      builtin = "#C57633",
    },
  },
}
