return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust_analyzer",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "rust"
      },
    },
  },

  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false,   -- This plugin is already lazy
    config = function()
      vim.g.rustaceanvim = {
        -- Plugin configuratin
        tools = {
        },
        -- LSP configuration
        server = {
          on_attach = function(client, bufnr)
            -- you can also put keymaps in here
            vim.keymap.set('n', '<S-j>', function() vim.cmd.RustLsp("joinLines") end)
          end,
          default_settings = {
            -- rust-analyzer language server configuration
            ['rust-analyzer'] = {
            },
          },
        },
        -- DAP configuration
        dap = {
        },
      }
    end,
  }
}
