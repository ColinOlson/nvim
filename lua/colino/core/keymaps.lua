vim.g.mapleader = "\\"

local k = vim.keymap

k.set("n", "<leader>nh", ":nohl<CR>")

k.set("n", "<leader>wc", "<C-w>c")
k.set("n", "<leader>wo", "<C-w>o")
k.set("n", "<leader>wv", "<C-w>v")
k.set("n", "<leader>wh", "<C-w>s")
k.set("n", "<leader>we", "<C-w>=")

k.set("n", "<leader>to", ":tabnew<CR>")
k.set("n", "<leader>tc", ":tabclose<CR>")
k.set("n", "<leader>tn", ":tabnext<CR>")
k.set("n", "<leader>tp", ":tabprevious<CR>")

k.set("n", "<leader>sm", ":MaximizerToggle<CR>")

k.set("n", "<leader>cc", "<Plug>(comment_toggle_linewise_current)")
k.set("v", "<leader>cc", "<Plug>(comment_toggle_linewise_visual)")

k.set("n", "<leader>q", ":NERDTreeToggle<CR>")
k.set("n", "<leader>Q", ":NERDTreeFind<CR>")

k.set("n", "<leader>ff", "<cmd>Telescope current_buffer_fuzzy_find<CR>")
k.set("n", "<leader> ",  "<cmd>Telescope find_files<CR>")
k.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
k.set("n", "<leader>fs", "<cmd>Telescope grep_string<CR>")
k.set("n", "<leader>be", "<cmd>Telescope buffers<CR>")
k.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")
