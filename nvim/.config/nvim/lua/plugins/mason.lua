return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",    -- Lua
	"lua-language-server",
	"debugpy",
	"tree-sitter-cli",
        "prettier",  -- HTML
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
