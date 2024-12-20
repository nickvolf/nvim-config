return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { 'javascript', 'go', 'lua', 'gdscript', 'python' },
        highlight = {
          enable = true,       -- Enable syntax highlighting
        },
        indent = {
          enable = true,       -- Enable indentation
        },
      })
    end,
  }
