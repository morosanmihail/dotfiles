local map = vim.keymap.set

map("n", "<leader>e", "<cmd>Neotree toggle<cr>",  { desc = "Explorer" })
map("n", "<leader>o", "<cmd>Neotree focus<cr>",   { desc = "Focus explorer" })

map("n", "<C-i>",       function() vim.cmd("bnext") end,              { desc = "Next buffer" })
map("n", "<S-Tab>",    function() vim.cmd("bprev") end,              { desc = "Previous buffer" })
map("n", "<leader>bd", function() vim.cmd("BufferLinePickClose") end, { desc = "Close buffer from tabline" })
map("n", "<leader>x",  function() Snacks.bufdelete() end,            { desc = "Close current buffer" })
map("n", "<leader>ca",  vim.lsp.buf.code_action,               { desc = "LSP code actions" })
map("n", "<leader>li",  "<cmd>LspInfo<cr>",                    { desc = "LSP info" })
map("n", "<leader>gr",  "<cmd>Telescope lsp_references<cr>",   { desc = "LSP references" })
map("n", "<leader>lf",  vim.lsp.buf.format,                    { desc = "Format buffer" })
map("n", "<leader>lr",  vim.lsp.buf.rename,                    { desc = "Rename symbol" })
map("n", "<leader>lR",  "<cmd>Telescope lsp_references<cr>",   { desc = "Search references" })
map("n", "<leader>bn", "<cmd>bnext<cr>",                             { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>",                         { desc = "Prev buffer" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>",    { desc = "Find files" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>",     { desc = "Ripgrep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>",       { desc = "Find buffers" })
map("n", "<leader>fC", "<cmd>Telescope commands<cr>",      { desc = "Find commands" })
map("n", "<leader>fl", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find lines" })
map("n", "<leader>fr", "<cmd>Telescope registers<cr>",     { desc = "Find registers" })
map("n", "<leader>fT", "<cmd>TodoTelescope<cr>",           { desc = "Find TODOs" })

map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })

map({ "n", "t" }, "<F7>", function() Snacks.terminal.toggle() end, { desc = "Toggle terminal" })

map("n", "<leader>/", "gcc",                        { desc = "Toggle comment", remap = true })
map("v", "<leader>/", "gc",                         { desc = "Toggle comment", remap = true })

map("n", "<leader>w", "<cmd>write<cr>",            { desc = "Save" })
map("n", "<leader>q", "<cmd>quit<cr>",             { desc = "Quit" })
