return {
  {
    "mrcjkb/rustaceanvim",
    version = "^9",
    lazy = false,
    keys = {
      { "<leader>lt", function() vim.cmd.RustLsp("testables") end,  desc = "Rust testables" },
    },
  },
}
