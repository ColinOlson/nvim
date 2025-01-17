if not vim.g.neovide then
    return
end

-- Helper function for transparency formatting
local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.95
vim.g.transparency = 0.95
vim.g.neovide_background_color = "#0f1117" .. alpha()
vim.g.neovide_window_blurred = true
