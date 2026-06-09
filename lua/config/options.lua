-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt
local g = vim.g

o.shiftwidth = 4
o.tabstop = 4
o.expandtab = true
o.softtabstop = 4

o.relativenumber = false

o.clipboard = "unnamedplus"
g.clipboard = "osc52"
