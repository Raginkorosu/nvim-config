-- :help options
-- Indents and spacing
vim.opt.tabstop = 4                                     -- insert 4 spaces for a tab
vim.opt.shiftwidth = 4                                  -- the number of spaces inserted for each indentation
vim.opt.expandtab = true                                -- convert tabs to spaces.
vim.opt.smartindent = true                              -- make indenting smarter again.

-- Line numbers
vim.opt.number = true                                   -- set numbered lines
vim.opt.relativenumber = true                           -- set relative number lines

-- Set annoyances off
vim.opt.errorbells = false                              -- ring the bell for error messages

-- Swap file and backup
vim.opt.swapfile = false                                -- Creates a swap file.
vim.opt.backup = false                                  -- Creates a backup file.
vim.opt.writebackup = false                             -- make a backup before overwriting a file

-- Clipboard
vim.opt.clipboard = "unnamedplus"                       -- allows neovim to access the system clipboard

-- Undofile and Undo Directory
vim.opt.undofile = true                                 -- enable persistent undo
vim.opt.undodir = vim.fn.expand('~') .. "/.vim/undodir"

-- Text Searching
vim.opt.hlsearch = false                                -- highlight matches with last search pattern
vim.opt.incsearch = true                                -- highlight match while typing search pattern

-- Tabline
vim.opt.showtabline = 2                                 -- Always show tabs

-- Popup menu
vim.opt.pumheight = 10                                  -- maximum height of the popup menu

-- Other sets
vim.opt.mouse = "a"                                     -- enable the use of mouse clicks
vim.opt.smartcase = true                                -- no ignore case when pattern has uppercase
vim.opt.cursorline = true                               -- highlight the screen line of the cursor
vim.opt.fileencoding = "utf-8"                          -- the encoding written to a file.
vim.opt.conceallevel = 0                                -- so that `` is visible in markdown files
vim.opt.cmdheight = 2                                   -- more space in neovim command line for displaying messages.
vim.opt.completeopt = { "menu", "menuone", "noselect"}          -- mostly for cmp

-- Column
vim.opt.numberwidth = 4                                 -- number of columns used for the line number
vim.signcolumn = "yes"                                  -- when and how to display the sign column

-- Wrap
vim.opt.wrap = false                                    -- long lines wrap and continue on the next line

-- Scrolling
vim.opt.scrolloff = 8                                   -- minimum nr. of lines above and below cursor
vim.opt.sidescrolloff = 8                               -- min. nr. of columns to left and right of cursor

-- Terminal Settings
vim.opt.termguicolors = true                            -- set term gui colors (most terminals support this)

-- Buffer splitting
vim.opt.splitbelow = true                               -- force all horizontal splits to go below current window
vim.opt.splitright = true                               -- force all vertical splits to go to the right of current window

-- Update times
vim.opt.timeoutlen = 1000                               -- time to wait for mapped sequence to complete (in milliseconds)
vim.opt.updatetime = 300                                -- faster completion (4000ms default)


vim.cmd [[set iskeyword+=-]]
