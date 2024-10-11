return {
  editor = {
    background = "#1E2022",
    cursor_line = "#26282E",
    select = "#214283",
    search_select = "#114957",
    under_corsour = "#373B39",
    diagnostic = {
      ok = "#5B9761",
      error = "#D54D5B",
      warn = "#F2C55C",
      weak_warn = "#857042",
      unnecessary = "#6F737A",
      spell = "#7EC482",
    },
    vcs = {
      added_line = "#549159",
      changed_line = "#375FAD",
      deleted_line = "#868A91",
      added_diff = "#2A4436",
      changed_diff = "#283641",
      deleted_diff = "#484A4A",
    },
  },
  scroll_bar = {
    background= "#525355",
    vcs = {
      added_line = "#447152",
      changed_line = "#43698D",
      deleted_line = "#656E76",
    },
  },
  interface = {
    text = "#DFE1E5",
    hint_text = "#7A7E85",
    search_select = "#BA9752",
    background = "#2B2D30",
    cursor_line = "#2E436E",
    scroll_bar = "#525355",
    cursor_line_inactive = "#43444A",
    border = "#1E1F22", -- inactive element
    active_element = "#3975F1", -- blue
    popup_window = "#393B40",
    vcs = {
      added_file = "#73BD79",
      changed_file = "#70AEFF",
      deleted_file = "#6F737A",
      ignored_file = "#CF8E6D",
      staged_file = "#df8984",
      unknown_file = "#E88F89",
    },
  },
  lang = {
    default = {
      text = "#BCBEC4",
      str = "#6AAB73",
      keyword = "#CF8E6D",
      digit = "#2AACB8",
      function_decaration = "#00AAFF",
      function_call = "#BCBEC4",
      property = "#C77DBB",
      constant = "#C77DBB",
      metadata = "#B3AE60",
      generic = "#16BAAC",
      struct = "#BCBEC4",
      local_variable = "#BCBEC4",
      argument = "#BCBEC4", -- function, constructure, etc.
      label = "#32B8AF",
      comment = "#7A7E85",
      comment_documentation = "#5F826B",
      comment_todo = "#8BB33D",
    },
    rust = {
      lifetime = "#20999D",
    },
  },
}
