local trouble = require("trouble");

trouble.setup({
    use_diagnostic_signs = true,
    action_keys = {
        close = { "q", "<Esc>" },
        cancel = "<c-e>",
    }
})
