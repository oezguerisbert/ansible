local map = vim.keymap.set
vim.g.mapleader = " "
-- insert mode
map("i", "jk", "<ESC>", { })

-- normal mode
map("n", "<F3>", ":set hlsearch!<cr>", { silent = true })
map("n", "<Leader>f", ":Prettier<cr>", { silent = true })
map("n", "<Leader>ff", ":Telescope find_files<cr>", { noremap = true, silent = true })
map("n", "<Leader>fg", ":Telescope live_grep<cr>", { noremap = true, silent = true })
map("n", "<Leader>fb", ":Telescope buffers<cr>", { noremap = true, silent = true })
map("n", "<Leader>fh", ":Telescope help_tags<cr>", { noremap = true, silent = true })
map("n", "<Leader>nt", ":tabn<cr>", { noremap = true, silent = true })
map("n", "<Leader>pt", ":tabp<cr>", { noremap = true, silent = true })
map("n", "<Leader>tn", ":tabnew .<cr>", { noremap = true, silent = true })

