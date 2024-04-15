local lspconfig_status, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status then
    return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status then
    return
end

local typescript_setup, typescript = pcall(require, 'typescript')
if not typescript_setup then
    return
end

local k = vim.keymap

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true, buffer = bufnr }

    k.set("n", "gf", "<cmd>Lspsaga finder<CR>", opts)
    -- k.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    k.set("n", "gD", "<cmd>Lspsaga goto_definition<CR>", opts)
    k.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
    k.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    k.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
    k.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
    k.set("n", "<leader>dl", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
    k.set("n", "<leader>dc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
    k.set("n", "<leader>dp", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
    k.set("n", "<leader>dn", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
    k.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
    k.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)

    if client.name == "tsserver" then
        k.set("n", "<leader>rf", ":TypescriptRenameFile<CR>", opts)
    end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Change the Diagnostic symbols in the sign column (gutter)
-- (not in youtube nvim video)
local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- configure html server
lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure typescript server with plugin
typescript.setup({
  server = {
    capabilities = capabilities,
    on_attach = on_attach,
  },
})

-- configure css server
lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- lspconfig["phpactor"].setup({
--   capabilities = capabilities,
--   on_attach = on_attach,
-- })

lspconfig["intelephense"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure tailwindcss server
-- lspconfig["tailwindcss"].setup({
--   capabilities = capabilities,
--   on_attach = on_attach,
-- })

lspconfig["jedi_language_server"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})


lspconfig["omnisharp"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["dockerls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["docker_compose_language_service"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["bashls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

-- configure lua server (with special settings)
lspconfig["lua_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = { -- custom settings for lua
    Lua = {
      -- make the language server recognize "vim" global
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})
