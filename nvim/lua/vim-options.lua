vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set smartindent")

vim.cmd("set listchars=eol:¬,space:·,trail:~,extends:>,precedes:<,tab:␣,")
vim.cmd("set list")

vim.cmd("set termguicolors")
vim.opt.background = "dark"
vim.opt.colorcolumn = "100"

vim.opt.hlsearch = false
vim.cmd("set incsearch")

vim.opt.swapfile = false

vim.g.mapleader = " "

--Global keymaps
-- Move visually highlighted lines up and down with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Keep cursor in middle of page when scrolling with d and u
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in middle of page when going through search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_set_option("clipboard", "unnamed")
