function FormatCode()
    local filetype = vim.bo.filetype

    if filetype == "python" then
        vim.lsp.buf.format({
            filter = function(client)
                return client.name == "null-ls" and
                    client.server_capabilities.documentFormattingProvider
            end,
            timeout_ms = 1000,
        })
    elseif filetype == "javascript" or filetype == "javascriptreact" then
        vim.cmd("EslintFixAll")
        vim.cmd("Prettier")
    elseif filetype == "typescript" or filetype == "typescriptreact" then
        vim.cmd("EslintFixAll")
        vim.cmd("Prettier")
    elseif filetype == "go" then
        require('go.format').goimports()
    else
        -- Add more filetypes and formatters as needed
        vim.lsp.buf.format({
            timeout_ms = 1000,
        })
    end
end

-- vim.keymap.set("n", "<leader>f", format_code())
vim.api.nvim_set_keymap('n', '<Leader>f', ':lua FormatCode()<CR>', { noremap = true, silent = true })
