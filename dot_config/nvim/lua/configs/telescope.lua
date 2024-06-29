local options = {
  defaults = {
    color_devicons = true,
    file_ignore_patterns = {
      "target", ".direnv", ".git"
    }
  }
}

require("telescope").setup(options)
