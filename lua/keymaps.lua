-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

local function ipy_run()
  local fn = vim.fn.expand '%:t'
  local cmd_str = '%run ' .. fn
  vim.cmd('SlimeSend1' .. cmd_str)
end
vim.keymap.set('n', '<leader>lr', ipy_run, { desc = 'plt.show()' })
vim.keymap.set('n', '<leader>lC', 'i# %%<c-[>')
vim.keymap.set('n', '<leader>zz', ':set spell!<cr>')
-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', 'tt', ':tab split<cr>')
vim.keymap.set('n', '[v', ':tabprev<cr>', { desc = 'Prev View(tab)' })
vim.keymap.set('n', ']v', ':tabnext<cr>', { desc = 'Next View(tab)' })
vim.keymap.set('n', '[b', ':bprev<cr>', { desc = 'Prev Buf' })
vim.keymap.set('n', ']b', ':bnext<cr>', { desc = 'Next Buf' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h', { desc = 'Exit terminal mode go window left' })
vim.keymap.set('t', '<C-w>j', '<C-\\><C-n><C-w>j', { desc = 'Exit terminal mode go window down' })
vim.keymap.set('t', '<C-w>k', '<C-\\><C-n><C-w>k', { desc = 'Exit terminal mode go window up' })
vim.keymap.set('t', '<C-w>l', '<C-\\><C-n><C-w>l', { desc = 'Exit terminal mode go window right' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- vim.keymap.set('n', ';', ':')
vim.keymap.set('i', 'kj', '<Esc>')
-- vim.keymap.set('n', '<leader>tp', ':exe "!tmux send -t 1 \'"getline(".")"\' Enter"<cr>')

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

vim.keymap.set('n', '<leader>mm', "myGo# vim: sta:et:sw=4:ts=4:sts=4<C-[>'y", { desc = 'Insert Modeline' })

vim.keymap.set('i', 'ppf', 'print(f"{}")<c-[>hhi')
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    -- vim.hl.on_yank()
    vim.highlight.on_yank()
  end,
})

-- vim.keymap.set('n', '<leader>r',  {group = 'iREPL'})
-- vim.keymap.set('n', '<leader>rt', '<cmd>Iron toggle_repl<cr>', Iron.toggle_repl, {desc = 'Toggle REPL', mode = 'n'})
-- 'ʂ': Unicode U+0282::642 (category Ll: Letter, lowercase)
-- 'ə': Unicode U+0259::601 (category Ll: Letter, lowercase)
-- 'ɨ': Unicode U+0268::616 (category Ll: Letter, lowercase)
-- 'ŋ': Unicode U+014B::331 (category Ll: Letter, lowercase)
-- 'ɹ': Unicode U+0279::633 (category Ll: Letter, lowercase)
-- 'ɛ': Unicode U+025B::603 (category Ll: Letter, lowercase)
-- 'ʊ': Unicode U+028A::650 (category Ll: Letter, lowercase)
-- 'ɕ': Unicode U+0255::597 (category Ll: Letter, lowercase)
-- 'ʊ': Unicode U+028A::650 (category Ll: Letter, lowercase)
-- 'ɪ': Unicode U+026A::618 (category Ll: Letter, lowercase)
-- 'ʻ': Unicode U+02BB::699 (category Lm: Letter, modifier)
-- call digraph_set('ib', 'ɨ')
-- digraph_set('ib', 'ɨ')
-- vim.api.call(digraph_set('ib', 'ɨ'))
-- vim.api.call(digraph_set('ib', 'ɨ'))
-- -- vim: ts=2 sts=2 sw=2 et
