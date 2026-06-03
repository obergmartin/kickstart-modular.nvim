-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'jpalardy/vim-slime',
    init = function()
      vim.g.slime_no_mappings = 1
      vim.g.slime_target = 'neovim'
    end,
    config = function()
      vim.g.slime_cell_delimiter = '# %%'
      --    vim.keymap.set("x", "gz", "<Plug>SlimeRegionSend", { remap = true, silent = false })
      vim.keymap.set('n', '<leader>ll', 'vV:SlimeSend<cr>', { desc = 'Slime Send Line' })
      vim.keymap.set('n', '<leader>lp', 'vip:SlimeSend<cr>', { desc = 'Slime Send Paragraph' })
      vim.keymap.set('n', '<leader>lc', '<Plug>SlimeSendCell', { desc = 'SlimeSendCell' })
      vim.keymap.set('n', '<leader>ls', ':call slime#send("plt.show()\\n") <CR>', { desc = 'plt.show()' })
      vim.keymap.set('n', '<leader>lr', ':call slime#send("foo", %) <CR>', { desc = 'plt.show()' })
    end,
  },
  {
    'protex/better-digraphs.nvim',
    -- version = 'unstable',
    init = function()
      -- vim.g.diagraph_map_sequences = {
      --   insert = '<C-d>',
      -- }
    end,
    config = function()
      vim.keymap.set('i', '<C-k><C-k>', '<Cmd>lua require"better-digraphs".digraphs("insert")<CR>', { desc = 'digraph insert' })
    end,
  },
  {
    'vimwiki/vimwiki',
    init = function()
      vim.g.vimwiki_path = '~/vimwiki/'
      vim.g.vimwiki_list = {
        {
          path = '~/vimwiki',
          syntax = 'markdown',
          ext = 'md',
        },
        {
          path = '~/vimwikiwork',
          syntax = 'markdown',
          ext = 'md',
        },
      }
      vim.g.vimwiki_syntax = 'markdown'
      vim.g.vimwiki_ext = 'md'
      vim.g.vimwiki_auto_header = 1
    end,
  },
  {
    'mattn/calendar-vim',
  },
  -- {
  --   'lervag/wiki.vim',
  --   -- tag = "v0.10", -- uncomment to pin to a specific release
  --   init = function()
  --     -- wiki.vim configuration goes here, e.g.
  --   end,
  -- },
}
-- vim: ts=2 sts=2 sw=2 et
