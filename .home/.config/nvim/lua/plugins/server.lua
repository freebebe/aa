-- Setup language servers managed by nvim-lsp-installer
-- local lsp_installer = require("nvim-lsp-installer")
-- local servers = require("servers")
--
-- lsp_installer.on_server_ready(function(server)
-- 	local opts = { on_attach = on_attach, capabilities = capabilities }
--
-- 	if servers[server.name] ~= nil then
-- 	opts = vim.tbl_deep_extend('force', opts, servers[server.name])
-- 	end
--
-- 	server:setup(opts)
-- end)
local nvim_lsp = require('lspconfig')

-- flow && the other server
local servers = {
    'flow',
    'tsserver',
}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    },
    capabilities = capabilities
  }
end

	if servers[tsserver] ~= nil then
	opts = vim.tbl_deep_extend('force', opts, servers[tsserver])
	end

-- Setup language servers managed by nvim-lsp-installer
-- local lsp_installer = require("nvim-lsp-installer")
-- local servers = require("servers")
--
-- lsp_installer.on_server_ready(function(server)
-- 	local opts = { on_attach = on_attach, capabilities = capabilities }
--
-- 	if servers[server.name] ~= nil then
-- 	opts = vim.tbl_deep_extend('force', opts, servers[server.name])
-- 	end
--
-- 	server:setup(opts)
-- end)
