local map = vim.keymap.set
vim.g.mapleader = " "

-- Helpers
local function nmap(lhs, rhs, desc)
    map("n", lhs, rhs, { noremap = true, silent = true, desc = desc })
end

local function vmap(lhs, rhs, desc)
    map("v", lhs, rhs, { noremap = true, silent = true, desc = desc })
end

-- ====================================
-- General
-- ====================================
nmap("<Leader>q", ":q<CR>", "Quit")
vmap("p", "P", "Paste")

-- ====================================
-- Windows
-- ====================================
nmap("<Leader>wh", "<C-w>h", "Go left")
nmap("<Leader>wj", "<C-w>j", "Go down")
nmap("<Leader>wk", "<C-w>k", "Go up")
nmap("<Leader>wl", "<C-w>l", "Go right")
nmap("<Leader>ww", "<C-w>w", "Next win")
nmap("<Leader>wW", "<C-w>W", "Prev win")
nmap("<Leader>wt", "<C-w>t", "Top win")
nmap("<Leader>wb", "<C-w>b", "Bottom win")
nmap("<Leader>w=", "<C-w>=", "Balance")
nmap("<Leader>w-", "<C-w>-", "Shorter")
nmap("<Leader>w+", "<C-w>+", "Taller")
nmap("<Leader>w_", "<C-w>_", "Max height")
nmap("<Leader>w<", "<C-w><", "Narrower")
nmap("<Leader>w>", "<C-w>>", "Wider")
nmap("<Leader>w|", "<C-w>|", "Max width")

-- Splits
nmap("<Leader>wsh", ":vsplit<CR>", "Split left")
nmap("<Leader>wsj", ":below split<CR>", "Split below")
nmap("<Leader>wsk", ":split<CR>", "Split above")
nmap("<Leader>wsl", ":rightb vsplit<CR>", "Split right")

-- Window management
nmap("<Leader>wr", "<C-w>r", "Rotate")
nmap("<Leader>wR", "<C-w>R", "Rotate rev")
nmap("<Leader>wx", "<C-w>x", "Swap")
nmap("<Leader>wH", "<C-w>H", "Move left")
nmap("<Leader>wJ", "<C-w>J", "Move down")
nmap("<Leader>wK", "<C-w>K", "Move up")
nmap("<Leader>wL", "<C-w>L", "Move right")
nmap("<Leader>wT", "<C-w>T", "To tab")

-- ====================================
-- LSP
-- ====================================
nmap("grd", ":lua vim.lsp.buf.definition()<CR>", "vim.lsp.buf.definition()")
nmap("grf", ":lua vim.lsp.buf.format()<CR>", "vim.lsp.buf.format()")

-- ====================================
-- Search (FzfLua)
-- ====================================
nmap("<Leader>sf", ":FzfLua files<CR>", "Files")
nmap("<Leader>sg", ":FzfLua live_grep_native<CR>", "Grep")
nmap("<Leader>s/", ":FzfLua blines<CR>", "Lines")
nmap("<Leader>sb", ":FzfLua buffers<CR>", "Buffers")

-- ====================================
-- Git (Gitsigns)
-- ====================================
nmap("[h", ":Gitsigns nav_hunk prev<CR>", "Prev hunk")
nmap("]h", ":Gitsigns nav_hunk next<CR>", "Next hunk")
nmap("<Leader>hp", ":Gitsigns preview_hunk<CR>", "Preview hunk")
nmap("<Leader>hi", ":Gitsigns preview_hunk_inline<CR>", "Preview inline")
nmap("<Leader>hd", ":Gitsigns diffthis<CR>", "Diff")
nmap("<Leader>hs", ":Gitsigns stage_hunk<CR>", "Stage hunk")
nmap("<Leader>hr", ":Gitsigns reset_hunk<CR>", "Reset hunk")
nmap("<Leader>hS", ":Gitsigns stage_buffer<CR>", "Stage buf")
nmap("<Leader>hR", ":Gitsigns reset_buffer<CR>", "Reset buf")
nmap("<Leader>hb", ":Gitsigns blame_line<CR>", "Blame line")
nmap("<Leader>hB", ":Gitsigns blame<CR>", "Blame file")

-- ====================================
-- File explorer
-- ====================================
nmap("<Leader>ft", ":NvimTreeFindFileToggle<CR>", "NvimTree")
nmap("<Leader>fo", ":Oil<CR>", "Oil")

-- ====================================
-- Which Key
-- ====================================
nmap("<Leader>?", ":WhichKey<CR>", "WhichKey")
