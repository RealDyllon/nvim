return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- Optional: improve sorting performance
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    -- Optional: adds file browser extension
    'nvim-telescope/telescope-file-browser.nvim'
  },
  config = function()
    local telescope = require('telescope')
    
    telescope.setup({
      defaults = {
        -- Your default configuration here
        mappings = {
          i = {
            -- Insert mode mappings
            ['<C-h>'] = 'which_key'
          }
        }
      },
      extensions = {
        file_browser = {
          -- Configure file browser extension if used
          theme = 'ivy',
          hijack_netrw = true
        }
      }
    })

    -- Load extensions
    telescope.load_extension('fzf')
    telescope.load_extension('file_browser')
  end,
  keys = {
    -- Keymappings for common Telescope actions
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Find Buffers' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help Tags' }
  }
}

