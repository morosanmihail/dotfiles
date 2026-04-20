-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.o.autocomplete = true
vim.o.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("keymaps")


vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local wins = vim.tbl_filter(function(w)
      local buf = vim.api.nvim_win_get_buf(w)
      return vim.bo[buf].filetype ~= "neo-tree"
    end, vim.api.nvim_list_wins())
    if #wins == 0 then vim.cmd("quit") end
  end,
})

require("lazy").setup("plugins", {
  change_detection = { notify = false },
})
