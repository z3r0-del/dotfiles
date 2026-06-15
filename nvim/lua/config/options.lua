-- Options
local set = vim.opt

-- Line Numbers
set.number = true
set.relativenumber = true

-- Tabs
set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.autoindent = true

-- Search Settings
set.ignorecase = true
set.smartcase = true

-- Swapfile
set.swapfile = false

-- Cursor Line
set.cursorline = true

-- Backspace
set.backspace = "indent,eol,start"

-- Incremental Search
set.incsearch = true
set.hlsearch = false

-- Faster Cursor Hold
set.updatetime = 50

-- Everything else
set.colorcolumn = "80"

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    set.wrap = true
    set.linebreak = true
    set.showbreak = "↪ "
    set.textwidth = 0
  end,
})

-- Emmet
vim.g.user_emmet_leader_key = ","
