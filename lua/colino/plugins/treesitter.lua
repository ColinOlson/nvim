local setup, sitter = pcall(require, "nvim-treesitter.configs")
if not setup then
    return
end

sitter.setup({
    ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline"
    },
    sync_install = false,
    auth_install = true,
    highlight = {
        enable = true
    }
})
