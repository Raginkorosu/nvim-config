local mason_null_status_ok, mason_null = pcall(require, "mason-null-ls")
local null_status_ok, null_ls = pcall(require, "null-ls")


if not mason_null_status_ok or not null_status_ok then
    print("Plugins mason_null or null_status is not working")
    return
end

local lint_servers = {
    "prettier",
    "stylua"
}

mason_null.setup({
    ensure_installed = lint_servers,
    automatic_installation = true
})

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    sources = {
        formatting.stylua,
        diagnostics.eslint,
        null_ls.builtins.completion.spell
    }
})
