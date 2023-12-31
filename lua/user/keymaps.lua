local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- Insert --
-- vim.keymap.set("i", "<TAB>", "<Cmd>lua require'coc'.coc#pum#visible() ? coc#pum#next(1) : '\<Tab>'", opts)
-- vim.keymap.set("i", "<S-TAB>", "<Cmd>lua require'coc'.coc#pum#visible() ? coc#pum#prev(1) : '\<S-Tab>'", opts)
-- vim.keymap.set("i", "<c-space>", "<Cmd>lua require'coc'.coc#refresh()", opts)


-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

keymap("n", "<F5>"  ,"<Cmd>lua require'dap'.continue()<CR>", opts)
keymap("n", "<F10>" ,"<Cmd>lua require'dap'.step_over()<CR>", opts)
keymap("n", "<F11>" ,"<Cmd>lua require'dap'.step_into()<CR>", opts)
keymap("n", "<F12>" ,"<Cmd>lua require'dap'.step_out()<CR>", opts)
keymap("n", "<F6>"  ,"<Cmd>lua require'dap'.toggle_breakpoint()<CR>", opts)
keymap("n", "<leader>d"  ,"<Cmd>lua require'dapui'.toggle()<CR>", opts)
-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap("n", "<C-s>", "<Cmd>MarkdownPreview<CR>", term_opts)
keymap("n", "<M-s>", "<Cmd>MarkdownPreviewStop<CR>", term_opts)
keymap("n", "<C-p>", "<Cmd>MarkdownPreviewToggle<CR>", term_opts)

keymap("n", "<leader>e"  ,"<Cmd>NvimTreeToggle<CR>", opts)
