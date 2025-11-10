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
      vim.g.slime_cell_delimiter = '#%%'
      --    vim.keymap.set("x", "gz", "<Plug>SlimeRegionSend", { remap = true, silent = false })
      vim.keymap.set('n', '<leader>tc', '<Plug>SlimeSendCell', { desc = 'SlimeSendCell' })
      vim.keymap.set('n', '<leader>tp', 'vip:SlimeSend<cr>', { desc = 'Slime Send Paragraph' })
    end,
  },
}
