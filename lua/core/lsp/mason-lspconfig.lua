local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
local handlers_status_ok, handlers = pcall(require, "core.lsp.handlers")
local sumneko_lua_settings_status_ok, sumneko_lua_settings = pcall(require, "core.lsp.settings.sumneko_lua")

local servers = {
    "angularls",
    "ansiblels",
-- "astro",
    "bashls",
--    "clangd",
--    "cmake",
    "cssls",
--    "denols",
    "dockerls",
    "emmet_ls",
--    "gopls",
    "html",
--    "jdtls",
    "tsserver",
    "jsonls",
    "marksman",
--    "rnix",
    "pyright",
    "rust_analyzer",
--    "sqlls",
--    "svelte",
    "sumneko_lua",
    "taplo",
    "tailwindcss",
    "terraformls",
    "lemminx",
    "yamlls",
--    "zls"
}


if not mason_lspconfig_status_ok  then
    return
end

if not lspconfig_status_ok then
    return
end


if not handlers_status_ok then
    return
end

if not sumneko_lua_settings_status_ok then
    return
end

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true,
})

mason_lspconfig.setup_handlers({
    function (server_name)
        lspconfig[server_name].setup{
            on_attach = handlers.on_attach,
            capabilities = handlers.capabilities,
        }
    end,
    ["sumneko_lua"] = function()
        lspconfig.sumneko_lua.setup{
            on_attach = handlers.on_attach,
            capabailities = handlers.capabilities,
            settings = sumneko_lua_settings.settings,
        }
    end,
})
