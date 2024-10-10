return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    keys = {
      {
        "<leader>fb",
        function()
          require("conform").format { async = true }
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = require "configs.conform",
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^4",
    lazy = false,
    ft = { "rust" },
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require "configs.rustaceanvim"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "configs.telescope"
    end,
  },
  {
    "natecraddock/workspaces.nvim",
    config = function()
      require "configs.workspaces"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },
  -- {
  --   "tpope/vim-fugitive",
  --   config = function()
  --     -- Optional configuration for Fugitive
  --   end,
  -- },
  {
    "tribela/transparent.nvim",
    event = "VimEnter",
    config = true,
  },
  -- {
  --   "chrisgrieser/nvim-tinygit",
  --   dependencies = {
  --     "stevearc/dressing.nvim",
  --     "nvim-telescope/telescope.nvim", -- optional, but recommended
  --     "rcarriga/nvim-notify", -- optional, but recommended
  --   },
  -- },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
      "echasnovski/mini.pick", -- optional
    },
    config = function()
      require "configs.neogit"
    end,
    lazy = false,
  },

  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/todo-comments.nvim",
    },
    opts = {},
    keys = {
      { "<leader>dd", "<cmd>Trouble<CR>", desc = "Open/close trouble list" },
    },
    lazy = false,
  },
}
