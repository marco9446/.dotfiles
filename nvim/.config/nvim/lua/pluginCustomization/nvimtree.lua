
-- empty setup using defaults

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  open_on_setup = true,
  view = {
    adaptive_size = false,
    width = 35,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    full_name = true,  
    group_empty = true,
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      git_placement = "signcolumn"
    }
  },
  filters = {
    dotfiles = false,
  },
})
