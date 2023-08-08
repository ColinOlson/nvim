require("colino.plugins-setup")

require("colino.plugins.comment")
require("colino.plugins.lualine")
require("colino.plugins.telescope")
require("colino.plugins.nvim-cmp")
require("colino.plugins.lsp.mason")
require("colino.plugins.lsp.lspsaga")
require("colino.plugins.lsp.lspconfig")
require("colino.plugins.treesitter")
require("colino.plugins.fancy_buffers")

require("colino.core.options")
require("colino.core.keymaps")
require("colino.core.colorscheme")
require("colino.core.neovide")

local function showIt()
    local line = vim.fn.line('.')
    local col = vim.fn.col('.')
    print("Showing syntax at: " .. line .. ", " .. col)

    local stack = vim.fn.synstack(line, col)

    for key, mainId in pairs(stack) do
        local transId = vim.fn.synIDtrans(mainId)
        local mainName = vim.fn.synIDattr(mainId, "name")
        local transName = vim.fn.synIDattr(transId, "name")
        print(key .. ": " .. mainName .. ' -> ' .. transName)
    end
end

vim.keymap.set("n", "<leader>syn", showIt)
