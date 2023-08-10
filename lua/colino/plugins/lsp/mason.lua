local mason_status, mason = pcall(require, "mason")
if not mason_status then
    return
end

local mason_lsp_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lsp_status then
    return
end

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "bashls",
        "cssls",
        "html",
        "lua_ls",
        "tailwindcss",
        "tsserver",
        "omnisharp",
        "dockerls",
        "docker_compose_language_service"
    }
})
