vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", function() vim.cmd("Ex") end)
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.hover()  end)
vim.keymap.set("n", "<leader>f", function() vim.cmd("Prettier") end)
vim.keymap.set("n", "<leader>a", function () require("harpoon.mark").add_file() end)
vim.keymap.set("n", "<leader>h", function () require("harpoon.ui").toggle_quick_menu() end)
vim.keymap.set("n", "<C-.>", function () require("harpoon.ui").nav_next() end)
vim.keymap.set("n", "<C-,>", function () require("harpoon.ui").nav_prev() end)
vim.keymap.set("n", "<leader>pt", function () require("harpoon.term").gotoTerminal(1) end)
vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap=true, silent=true })

