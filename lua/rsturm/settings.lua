-- Line Numbering
vim.wo.number = true -- enable
vim.opt.nu = true -- absolute numbering

-- Mouse settings
-- (Maybe someday I'll just disable... Maybe not.)
vim.o.mouse = 'a'
vim.o.mousescroll = 'ver:3,hor:3'

-- Sync vim clipboard with system clipboard
-- see :help clipboard
vim.o.clipboard = 'unnamedplus'

-- time (ms) to wait from input until saving to temp buffer
vim.o.updatetime = 300

-- timeout on key sequences
vim.o.timeout = true
vim.o.timeoutlen = 500
vim.o.ttimeoutlen = 200

-- Tabs/indenting
vim.opt.tabstop = 4 -- number of spaces to SHOW when an actual tab is present
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 -- reinterpret tab as this many spaces
vim.opt.expandtab = true -- use 1-<shiftwidth> spaces appropriately to get to next indentation
vim.opt.autoindent = true -- maintain indentation from line to line
vim.opt.smartindent = true -- assume indentation of new line in code

-- Search settings
-- ignore case unless a capital is in the query
vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.textwidth = 100
vim.opt.wrap = false
vim.opt.showbreak = '│ ' --┊│▕
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 36
-- vim.opt.sidescroll = 0

vim.opt.linebreak = true
vim.opt.breakindent = true

vim.opt.laststatus = 3

vim.opt.jumpoptions = 'stack'

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- default 'tcqj'
vim.opt.formatoptions = vim.opt.formatoptions
    - 'a' -- auto formatting is bad
    - 't' -- no auto formatting
    + 'c' -- auto wrap comments
    + 'q' -- allow formatting comments w/ gq
    + 'r' -- unless pressing enter
    - 'o' -- O and o, don't continue comments
    + 'n' -- indent past the formatlistpat, not underneath it
    - '2'
    + 'j' -- remove comment leader when joining lines

-- Folding.
vim.o.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.o.foldlevelstart = 99
vim.wo.foldtext = ''
vim.opt.foldmethod = 'indent'
vim.opt.foldenable = true
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldmethod = 'expr'

-- set "~" to "`" { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
vim.opt.fillchars = {
    horiz = '─',
    horizup = '┴',
    horizdown = '┬',
    vert = '│',
    -- msgsep = '│',
    vertleft = '┤',
    vertright = '├',
    verthoriz = '┼',
    msgsep = '─',
    eob = ' ',
    fold = ' ',
    foldsep = ' ',
    foldclose = '',
    foldopen = '',
}
-- Completion.
vim.opt.wildignore:append({ '.DS_Store' })
vim.o.completeopt = 'menuone,noselect,noinsert'
vim.o.pumblend = 20 -- Make builtin completion menus slightly transparent
vim.o.pumheight = 30 -- Make popup menu smaller
-- vim.o.winblend = 10 -- Make floating windows slightly transparent
-- vim.o.listchars = 'tab:> ,extends:…,precedes:…,nbsp:␣,eol:↴' -- Define which helper symbols to show
-- vim.o.listchars = 'tab:    ,extends:…,precedes:…,nbsp:␣' -- Define which helper symbols to show
vim.opt.listchars = { space = '⋅', trail = '⋅', tab = '  ↦' }
vim.o.list = false -- Show some helper symbols

vim.opt.shortmess:append({
    w = true,
    s = true,
})

-- save undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath('data') .. '/.undo'
vim.opt.undofile = true

-- set highlight on search
vim.hlsearch = false
vim.incsearch = true

vim.o.completeopt = 'menu,menuone,noinsert,preview'
vim.opt.termguicolors = true
vim.o.virtualedit = 'block' -- Allow going past the end of line in visual block mode

vim.opt.cursorline = true
vim.opt.cursorlineopt = 'number'
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { link = 'ModeMsg' })

-- vim.opt.signcolumn = 'yes:2'
-- vim.opt.signcolumn = 'yes:1'

vim.opt.showtabline = 2
