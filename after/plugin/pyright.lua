require('lspconfig').pyright.setup {
  settings = {
    pyright = {
      -- Using Ruff's import organizer
    },
    python = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
      },
    },
  },
}
