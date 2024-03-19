local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'rust_analyzer',
  "tsserver",
  "gopls"
})


lsp.nvim_workspace()

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = false
})
