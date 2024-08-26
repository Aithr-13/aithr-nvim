vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.g.mapleader = " "
vim.o.background = "dark"
vim.cmd.colorscheme("nordic")
vim.opt.showmode = false
vim.opt.foldmethod = "syntax"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.termguicolors = true
vim.diagnostic.config({
	virtual_text = false,
})

vim.g.loaded_netrwPlugin = 1

-- HIGHLIGHT AND YANK
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="ToDoBGWarn", timeout=200})
augroup END
]])

-- Colors are applied automatically based on user-defined highlight groups.
-- There is no default value.
vim.cmd.highlight("IndentLine guifg=#434C5E")
-- Current indent line highlight
vim.cmd.highlight("IndentLineCurrent guifg=#81A1C1")
vim.opt.fillchars = {
	horiz = "━",
	horizup = "┻",
	horizdown = "┳",
	vert = "┃",
	vertleft = "┫",
	vertright = "┣",
	verthoriz = "╋",
	eob = " ",
}
local keymap = vim.keymap
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>sq", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("", "<leader>e", vim.diagnostic.open_float, { desc = "Get error details" }) -- get error deets
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
