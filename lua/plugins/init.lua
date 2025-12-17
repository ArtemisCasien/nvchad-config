return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
        "html", "css"
  		},
      highlight = {
        enable = true,
      }  
  	},
  },

  {
   "jinh0/eyeliner.nvim", -- NOTE: Move fasterwith unique f/F indicators (Optional)
    keys = {
        { "f" },
        { "F" },
    },
    opts = {
        highlight_on_key = true,
        dim = true,
        max_length = 9999,
        disabled_filetypes = {},
        disabled_buftypes = {},
        default_keymaps = true,
    },	
 },
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    }
  }
  
}
