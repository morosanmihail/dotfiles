return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        hijack_netrw_behavior = "open_default",
      },
      window = {
        mappings = {
          ["<space>"] = "noop",
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function() require("neo-tree.command").execute({ action = "close" }) end,
        },
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
}
