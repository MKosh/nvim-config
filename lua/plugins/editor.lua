return {
  {
    "folke/flash.nvim",
    keys = {
      {"<leader>su", mode = {"n"}, function () require("flash").jump({pattern = vim.fn.expand("<cword>"),}) end, desc = "Search underlined word"},
    },
  },

  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   event = "LazyFile",
  --   opts = {
  --     indent = {
  --       -- char = "│▏",
  --       char = "▏",
  --       -- tab_char = "▏",
  --       -- tab_char = "│",
  --     },
  --     scope = { enabled = false },
  --     exclude = {
  --       filetypes = {
  --         "help",
  --         "alpha",
  --         "dashboard",
  --         "neo-tree",
  --         "Trouble",
  --         "lazy",
  --         "mason",
  --         "notify",
  --         "toggleterm",
  --         "lazyterm",
  --       },
  --     },
  --   },
  --   main = "ibl",
  -- },

  {
    "ThePrimeagen/harpoon",
  },

  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    build = ":UpdateRemotePlugins",
    init = function ()
    end,
  },
}
