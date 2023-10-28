local telescope = require('telescope')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

telescope.setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "__pycache__",
            ".git",
            "webpack_bundles",
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            find_command = {
                "rg",
                "--files",
                "--iglob",
                "!.git",
                "--hidden",
            },
            previewer = false,
        },
        git_files = {
            theme = "dropdown",
            previewer = false,
        },
        grep_string = {
            theme = "dropdown",
            previewer = false,
        },
    },
}
