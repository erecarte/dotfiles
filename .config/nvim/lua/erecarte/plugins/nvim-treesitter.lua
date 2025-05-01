return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
  dependencies = {
    { 'nvim-treesitter/nvim-treesitter-textobjects' }, -- Syntax aware text-objects
    {
      'nvim-treesitter/nvim-treesitter-context', -- Show code context
      opts = { enable = true, mode = 'topline', line_numbers = true },
    },
  },
  config = function()
    local treesitter = require 'nvim-treesitter.configs'

    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'markdown' },
      callback = function(ev)
        -- treesitter-context is buggy with Markdown files
        require('treesitter-context').disable()
      end,
    })

    treesitter.setup {
      ensure_installed = {
        'csv',
        'dockerfile',
        'gitignore',
        'go',
        'gomod',
        'gosum',
        'gowork',
        'javascript',
        'json',
        'lua',
        'markdown',
        'proto',
        'python',
        'rego',
        'ruby',
        'sql',
        'svelte',
        'yaml',
        'php',
      },
      indent = { enable = false },
      auto_install = true,
      sync_install = false,
      highlight = {
        enable = true,
        disable = { 'csv' }, -- preferring chrisbra/csv.vim
      },
      textobjects = { select = { enable = true, lookahead = true } },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<A-Right>', -- set to `false` to disable one of the mappings
          node_incremental = '<A-Right>',
          scope_incremental = false,
          node_decremental = '<A-Left>',
        },
      },
    }
  end,
  -- There are additional nvim-treesitter modules that you can use to interact
  -- with nvim-treesitter. You should go explore a few and see what interests you:
  --
  --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
  --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
  --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
