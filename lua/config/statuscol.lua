vim.cmd("highlight LineNr guifg=#A3BE8C")
vim.cmd("highlight CursorLineNr guifg=#cdd6f49")
vim.cmd("highlight LineNrAbove guifg=#c5727A")
vim.cmd("highlight LineNrBelow guifg=#81a1c1")
vim.cmd("hi Status_LineNr guifg=#6c7086")
vim.cmd("hi Status_DivLine guibg=#1e1e2e guifg=#ffffff")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set signcolumn=yes:1")
vim.o.statuscolumn = "%C%s%#Status_LineNr#%4.3l%* %-2.2r%#Status_DivLine#%*┃ "
