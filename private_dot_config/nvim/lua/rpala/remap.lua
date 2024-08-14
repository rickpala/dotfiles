-- Shortcut
function feedkeys(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, false)
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>p", vim.cmd.Ex)

-- Move selected line up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keeps jump-to-search at center of screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Half page jump while keeping cursor centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Never end up in No Man's Land ever again
vim.keymap.set("n", "Q", "<nop>")

-- Translates Swift imports and BUILD targets
-- Slow... but it works
vim.keymap.set("n", "<leader>t", function()
    start_time = os.time()

    feedkeys("yyp", "n")

    if string.find(vim.api.nvim_buf_get_name(0), "BUILD") then
        feedkeys(":s#[\",]##g<CR>" ..
                 ":s#//##g<CR>" ..
                 ":s#[/:]#_#g<CR>" ..
                 ":s#^\\s*#import #<CR>", "n")
    elseif string.find(vim.api.nvim_buf_get_name(0), "swift") then
        feedkeys(":s#^import #//#<CR>" ..
                 ":s#_#/#g<CR>" ..
                 ":s#/\\([^/]*\\)$#:\\1#<CR>" ..
                 ":s#\\(\\S\\+\\)#\"\\1\",#<CR>", "n")
    end

    feedkeys("\"tyy", "n")
    feedkeys("\"_dd", "n")

    end_time = os.time()
end)

vim.keymap.set("n", "<leader>tp", "\"tp")

vim.keymap.set("n", "<leader>/", vim.cmd.Commentary)
vim.keymap.set("n", "<C-/>", vim.cmd.Commentary)
vim.keymap.set("v", "<C-/>", vim.cmd.Commentary)


-- Tabs
vim.keymap.set("n", "<C-l>]", vim.cmd.tabr)
vim.keymap.set("n", "<C-l>[", vim.cmd.tabl)
vim.keymap.set("n", "<C-l>j", vim.cmd.tabp)
-- vim.keymap.set("n", "<C-n>", vim.cmd.tabn)
vim.keymap.set("n", "<C-t>", vim.cmd.tabnew)
vim.keymap.set("n", "<C-x>", vim.cmd.tabc)

-- Telescope
vim.keymap.set("n", "<leader>fp", function() require('telescope.builtin').find_files( { cwd = vim.fn.expand('%:p:h') }) end)
vim.keymap.set("n", "<leader>ff", function() require('telescope.builtin').find_files() end)
vim.keymap.set("n", "<leader>fg", function() require('telescope.builtin').live_grep() end)
vim.keymap.set("n", "<leader>fb", function() require('telescope.builtin').buffers() end)
vim.keymap.set("n", "<leader>fh", function() require('telescope.builtin').help_tags() end)
vim.keymap.set("n", "<leader>fi", function() require('telescope.builtin').current_buffer_fuzzy_find() end)

-- Nerdtree
vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeFocus)
vim.keymap.set("n", "<C-e>", vim.cmd.NERDTreeToggle)
vim.keymap.set("n", "<C-f>", vim.cmd.NERDTreeFind)
