return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    lazy = false,
    keys = {
      { "<leader>lt", function() vim.cmd.RustLsp("testables") end,  desc = "Rust testables" },
    },
  },
}
