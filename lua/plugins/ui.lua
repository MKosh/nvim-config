return {
  "Mofiqul/vscode.nvim",

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>h"] = { name = "+harpoon" },
      },
      window = {
        border = "double",
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        separator_style = "slant",
        always_show_bufferline=true,
      },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        disabled_filetypes = {'alpha', "Neo-tree", 'toggleterm'},
      },
      sections = {
        lualine_z = {
            function()
              return " " .. os.date("%a %b %d %I:%M")
            end,
        }
      }
    },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      },
    },
  },
}
