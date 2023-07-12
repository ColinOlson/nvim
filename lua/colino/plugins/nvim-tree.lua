local setup, tree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<leader>c', api.tree.change_root_to_node,      opts('CD'))
    vim.keymap.set('n', '<leader>u', api.tree.change_root_to_parent,    opts('Up'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

-- pass to setup along with your other options
tree.setup {
    on_attach = my_on_attach,
    actions = {
        open_file = {
            window_picker = {
                enable = false
            }
        }
    }
}
