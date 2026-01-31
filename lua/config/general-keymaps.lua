-- setup `mapleader` and `maplocalleader` before lazyvim
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- change j and k from moving between logical lines to visual lines
vim.keymap.set('n', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true, silent = true })
vim.keymap.set('v', 'j', 'gj', { noremap = true, silent = true })
vim.keymap.set('v', 'k', 'gk', { noremap = true, silent = true })

vim.keymap.set("n", "<leader>t", vim.cmd.Ex)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- vim.keymap.set("n", "<C-u>", "<C-u>zz") -- disable to prevent weird motion when use mini.animate plugin
-- vim.keymap.set("n", "<C-d>", "<C-d>zz") -- disable to prevent weird motion when use mini.animate plugin

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>cs", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true })

--vim.keymap.set({ "n", "v" }, "<leader>c/", function()
vim.keymap.set({ "n", "v" }, "<C-_>", function() -- <C-_> = ctrl + /
  vim.cmd("normal gcc")
end, { desc = "Comment" })

-- WINDOW
vim.keymap.set("n", "<leader>uv", function()
  vim.cmd("vsplit")
end, { desc = "Split window left" })

vim.keymap.set("n", "<leader>uh", function()
  vim.cmd("split")
end, { desc = "Split window bellow" })

vim.keymap.set("n", "<leader>ud", function()
  vim.cmd("close")
end, { desc = "Delete window" })


vim.keymap.set("n", "<leader>u<Down>", "<cmd>resize -10<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<leader>u<Up>", "<cmd>resize +10<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<leader>u<Left>", "<cmd>vertical resize -50<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<leader>u<Right>", "<cmd>vertical resize +50<cr>", { desc = "Increase window width" })
vim.keymap.set("n", "<leader>un", "<cmd>wincmd =<cr>", { desc = "Reset window sizes" })

-- "neovim/nvim-lspconfig",
vim.keymap.set("n", "<leader>mlc", function()
  vim.cmd("checkhealth vim.lsp")
end, { desc = "Check LSP health" })

-- █▀█ ▄▀█ █▀▀ █▀▄▀█ ▄▀█ █▄░█ █▀
-- █▀▀ █▀█ █▄▄ █░▀░█ █▀█ █░▀█ ▄█
-- folke / lazy.nvim
vim.keymap.set("n", "<leader>mpl", function()
  vim.cmd("Lazy")
end, { desc = "Open Lazy" })

-- williamboman / mason.nvim
vim.keymap.set("n", "<leader>mpm", function()
  vim.cmd("Mason")
end, { desc = "Open Mason" })

-- nvim-treesitter / nvim-treesitter
vim.keymap.set("n", "<leader>mpt", "<cmd>TSInstallInfo<CR>", { desc = "Open Treesitter PM" })
-- ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄ ▄


-- "nvimtools/none-ls",
vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "vim.lsp.buf.format/none-ls format" })
-- vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "go to definition" }) -- use telescope definition instead


vim.keymap.set({ "n" }, "<leader>cpp", function() -- <C-_> = ctrl + /
  vim.cmd("normal gqip")
end, { desc = "format paragraph" })

vim.keymap.set({ "n" }, "<leader>cpl", function() -- <C-_> = ctrl + /
  vim.cmd("normal gq$")
end, { desc = "format line" })


-- QUICK ACCESS TO CONFIG
vim.keymap.set("n", "<leader>mca", "<cmd>exe 'edit' stdpath('config').'/lua/config/auto-commands.lua'<cr>",
  { desc = "auto-commands" })
vim.keymap.set("n", "<leader>mck", "<cmd>exe 'edit' stdpath('config').'/lua/config/general-keymaps.lua'<cr>",
  { desc = "general-keymaps" })
vim.keymap.set("n", "<leader>mco", "<cmd>exe 'edit' stdpath('config').'/lua/config/options.lua'<cr>",
  { desc = "options" })
vim.keymap.set("n", "<leader>mce", "<cmd>exe 'edit' stdpath('config').'/lua/plugins/extras.lua'<cr>",
  { desc = "plugin/extras" })
vim.keymap.set("n", "<leader>mct", "<cmd>exe 'edit' stdpath('config').'/lua/plugins/test-plugins.lua'<cr>",
  { desc = "plugin/test-plugins" })
vim.keymap.set("n", "<leader>mcn", "<cmd>exe 'edit' stdpath('config').'/my-nvim-notes.md'<cr>",
  { desc = "my nvim notes" })
vim.keymap.set("n", "<leader>mcs", "<cmd>so %<cr>", { desc = "source this buffer" })
vim.keymap.set("n", "<leader>mh", "<cmd>exe 'edit' stdpath('config').'/my-nvim-notes.md'<cr>", { desc = "my cheatsheet" })


vim.keymap.set("n", "<leader>fb", "<cmd>b#<cr>", { desc = "Back to previous buffer" })
vim.keymap.set("n", "<leader>fy", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  print("Copied relative: " .. path)
end, { desc = "Copy relative file path" })
vim.keymap.set("n", "<leader>fY", function()
  local path = vim.api.nvim_buf_get_name(0)
  if path == "" then
    print("No file path")
    return
  end
  vim.fn.setreg("+", path)
  print("Copied: " .. path)
end, { desc = "Copy current file path" })



vim.keymap.set('n', '<BS>', 'X', { noremap = true })                                                      -- backspace become => X (delete char behind cursor)
vim.keymap.set('n', 'X', function() vim.diagnostic.open_float() end, { desc = 'Show diagnostics float' }) -- just like shift K but for diagnostics



-- SAVE FOR LATER

-- Move Lines
-- map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
-- map("n", "<a-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "move up" })
-- map("i", "<a-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "move down" })
-- map("i", "<a-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "move up" })
-- map("v", "<a-j>", ":<c-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "move down" })
-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })


-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })
-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })
-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })
-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })
-- map("v", "<a-k>", ":<c-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "move up" })
-- vim.keymap.set("n", "<leader>s", function() vim.cmd('w') end) -- just for some convenion for saving file

-- WINDOW
-- vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Move to next window" })
-- vim.keymap.set("n", "<leader>h", "<c-w>", { desc = "Move to next TMUX window (tmux session only)" })
-- vim.keymap.set("n", "<leader>w", function()
--   local tmux = os.getenv("TMUX")
--   if tmux then
--     -- Dalam sesi tmux, kirim perintah pindah panel ke kiri
--     vim.fn.system("tmux select-pane -L")
--   else
--     -- Jika tidak dalam tmux, pakai default vim move
--     vim.cmd("wincmd w")
--   end
-- end, { desc = "Move left (vim or tmux)" })

-- vim.keymap.set(
--   "n",
--   "<leader>sx",
--   require("telescope.builtin").resume,
--   { noremap = true, silent = true, desc = "resume" }
-- )

--
-- QUICK FIX LOCAL AND GLOBAL
-- vim.keymap.set("n", "<leader>xx", "<cmd>lopen<cr>", { desc = "Location List (local to current window)" }) -- use telescope instead
-- vim.keymap.set("n", "<leader>xg", "<cmd>copen<cr>", { desc = "Quickfix List (global)" }) -- use telescope instead

-- use fzf lua code action instead
-- entah kenapa tiba tiba code action tidak muncul melalui floating window
-- vim.keymap.set("n", "<leader>ca", function()
--   vim.lsp.buf.code_action()
-- end, { desc = "Code action" })
