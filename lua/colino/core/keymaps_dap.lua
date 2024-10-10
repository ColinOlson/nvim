local setup, dap = pcall(require, 'dap')
if not setup then
    return
end


local k = vim.keymap

k.set("n", "<leader>dc", dap.continue)
k.set("n", "<leader>dss", dap.step_over)
k.set("n", "<leader>dsi", dap.step_into)
k.set("n", "<leader>dso", dap.step_out)

k.set("n", "<leader>db", dap.toggle_breakpoint)
k.set("n", "<leader>dr", dap.repl.open)


-- nnoremap <silent> <Leader>B <Cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
-- nnoremap <silent> <Leader>lp <Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
-- nnoremap <silent> <Leader>dr <Cmd>lua require'dap'.repl.open()<CR>
-- nnoremap <silent> <Leader>dl <Cmd>lua require'dap'.run_last()<CR>
