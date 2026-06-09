require("vim._core.ui2").enable({})

require("config.lazy")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "ayu",
  callback = function()
    local colors = require("ayu.colors")

    vim.api.nvim_set_hl(0, "NoicePopup", { bg = colors.line })
    -- vim.api.nvim_set_hl(0, "NoicePopupBorder", { bg = "None" })
  end,
})
