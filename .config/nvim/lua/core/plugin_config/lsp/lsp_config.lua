require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "ansiblels",
    "bashls",
    "clangd",
    "cssls",
    "dockerls",
    "docker_compose_language_service",
    "gopls",
    "html",
    "jsonls",
    "autotools_ls",
    "marksman",
    "jedi_language_server",
    "jinja_lsp",
    "vimls",
    "terraformls",
    "regols"
  }
})


local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local toggle_virtual_text = true
vim.keymap.set('n', '<leader>tv', function ()
  toggle_virtual_text = not toggle_virtual_text
  vim.diagnostic.config({ virtual_text = toggle_virtual_text })
end)

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- After setting up mason-lspconfig you may set up servers via lspconfig

vim.lsp.enable("lua_ls", {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    diagnostics = {
      globals = { "vim" },
    },
  }
})

vim.lsp.enable("ansiblels", {
  on_attach = on_attach,
  capabilities = capabilities,
})
vim.lsp.enable("bashls", {
  on_attach = on_attach,
  capabilities = capabilities,
})
vim.lsp.enable("clangd", { capabilities = capabilities,})
vim.lsp.enable("cssls", {  capabilities = capabilities,})
vim.lsp.enable("dockerls", {  capabilities = capabilities,})
vim.lsp.enable("docker_compose_language_service", {  capabilities = capabilities,})
vim.lsp.enable("gopls", { on_attach = on_attach, capabilities = capabilities,})
vim.lsp.enable("html", {  capabilities = capabilities,})
vim.lsp.enable("jsonls", {  capabilities = capabilities,})
vim.lsp.enable("autotools_ls", {  capabilities = capabilities,})
vim.lsp.enable("marksman", {  capabilities = capabilities,})
vim.lsp.enable("jedi_language_server", { on_attach = on_attach, capabilities = capabilities,})
vim.lsp.enable("jinja_lsp", { on_attach = on_attach, capabilities = capabilities,})
vim.lsp.enable("vimls", {  capabilities = capabilities,})
vim.lsp.enable("terraformls", {  capabilities = capabilities,})
vim.lsp.enable("regols", {  capabilities = capabilities,})
vim.lsp.enable("ansiblels", {  capabilities = capabilities,})

