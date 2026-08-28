vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- general editor config
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.number = true
vim.opt.relativenumber = true

-- enable whitespace display
vim.opt.list = true
vim.opt.listchars:append({
  tab = "| ",
  trail = "·",
  eol = "↩",
})

-- show max line length guideline
vim.opt.colorcolumn = "89"
-- use spaces for tabs, etc.
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- font editing
vim.opt.linespace = 5

-- reset search
vim.keymap.set('n', '<leader>nh', ':nohlsearch<CR>')

-- show newlines
-- vim.api.nvim_set_keymap('n', '<leader>vl', ':set list listchars=tab:>\\ ,trail:-,eol:↵<CR>', { noremap=true, silent=true })

-- window resize
vim.api.nvim_set_keymap('n', '<leader>l', ':vertical resize +10<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>h', ':vertical resize -10<CR>', { noremap=true, silent=true })

vim.api.nvim_set_keymap('n', '<leader>j', ':resize +10<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('n', '<leader>k', ':resize -10<CR>', { noremap=true, silent=true })

-- toggle relative line numbers
-- local is_relative_line_numbers = vim.opt.relativenumber
-- vim.keymap.set('n', '<leader>Rn', function ()
--   vim.opt.relativenumber = not is_relative_line_numbers
-- end)

-- copilot
vim.g.copilot_enabled = 0
