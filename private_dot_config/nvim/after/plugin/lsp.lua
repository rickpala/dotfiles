local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)
require("mason").setup({})
require("mason-lspconfig").setup({
    handlers = {
        lsp.default_setup,
    }
})
-- lsp.ensure_installed({
--     'swift'
-- })

-- lsp.set_preferences({
--     suggest_lsp_servers = false,
--     sign_icons = {
--         error = 'E',
--         warn = 'W',
--         hint = 'H',
--         info = 'I'
--     }
-- })

lsp.setup()

-- vim.diagnostic.config({
--     virtual_text = true
-- })
