
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
