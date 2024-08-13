vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.o.background = "dark"
vim.cmd.colorscheme("nordic")
vim.opt.showmode = false
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.termguicolors = true
vim.diagnostic.config({
	virtual_text = false,
})

-- HIGHLIGHT AND YANK
vim.cmd([[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]])

local palette = require("nordic.colors")
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
vim.cmd.highlight(string.format("RainbowDelimiterRed guifg =%s", palette.red.dim))
vim.cmd.highlight(string.format("RainbowDelimiterYellow guifg =%s", palette.yellow.dim))
vim.cmd.highlight(string.format("RainbowDelimiterBlue guifg =%s", palette.blue2))
vim.cmd.highlight(string.format("RainbowDelimiterOrange guifg =%s", palette.orange.dim))
vim.cmd.highlight(string.format("RainbowDelimiterGreen guifg =%s", palette.green.dim))
vim.cmd.highlight(string.format("RainbowDelimiterViolet guifg =%s", palette.magenta.dim))
vim.cmd.highlight(string.format("RainbowDelimiterCyan guifg =%s", palette.cyan.dim))
