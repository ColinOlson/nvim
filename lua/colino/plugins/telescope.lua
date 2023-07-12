local setup, telescope = pcall(require, 'telescope')
if not setup then
    return
end

local actions_setup, actions = pcall(require, 'telescope.actions')
if not actions_setup then
    return
end

telescope.setup({
    defaults = {
        mappings = {
            i = {
            }
        }
    }
})

telescope.load_extension("fzf")
