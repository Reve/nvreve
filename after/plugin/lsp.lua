local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.ensure_installed({
	"tsserver",
	"eslint",
	"lua_ls",
	"rust_analyzer",
	"pyright",
    "gopls",
    "html",
    "jsonls",
})

local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.format_on_save({
    format_opts = {
        async = true,
        timeout_ms = 10000,
    },
    servers = {
        ["null-ls"] = {'lua', 'rust', 'python', 'go', 'html', 'json'},
    }
})

lsp.setup()
