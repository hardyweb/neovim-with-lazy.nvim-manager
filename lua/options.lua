--Incremental live completion
vim.o.inccommand = 'nosplit'

--Set highlight on search
vim.o.hlsearch = true

--Make line numbers default
vim.wo.number = true
vim.wo.relativenumber =true

--Do not save when switching buffers
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.cmd [[set undofile]]

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

--Set colorscheme (order is important here)
vim.o.termguicolors = true
--vim.o.background = 'dark'
vim.g.onedark_terminal_italics = 2

--vim.cmd [[colorscheme default]]
--vim.cmd [[hi NormaFloat guibg=NONE ctermbg=LightGrey]]
vim.cmd.colorscheme('default')

vim.api.nvim_set_hl(0, "NormalFloat", {bg="none", ctermbg="none"})
vim.api.nvim_set_hl(0, "Normal", {bg="none"})

