require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>pp", "<cmd>RustLsp runnables<cr>")
map("n", "<leader>sw", "<cmd>Telescope workspaces<cr>")
map("n", "<leader>sa", "<cmd>WorkspacesAdd<cr>")
map("n", "<leader>sd", "<cmd>WorkspacesRemove<cr>")
map("n", "<leader>gs", "<cmd>Neogit<cr>")
map("n", "<leader>dd", "<cmd>Trouble diagnostics toggle<cr>")
map("n", "<leader>ds", "<cmd>Trouble symbols toggle focus=false<cr>")
map("n", "<leader>dl", "<cmd>Trouble lsp toggle focus=false<cr>")
