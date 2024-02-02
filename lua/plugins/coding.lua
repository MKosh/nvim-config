return {
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    opts = {
      config = {
        cpp = "// %s",
      },
    },
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
    local Config = require("lazyvim.config")
    vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

    for name, sign in pairs(Config.icons.dap) do
      sign = type(sign) == "table" and sign or { sign }
      vim.fn.sign_define(
        "Dap" .. name,
        { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
      )
    end
    local dap = require('dap')
    dap.adapters.lldb = {
      type = 'executable',
      command = '/usr/bin/lldb-vscode',
      name = 'lldb',
    }
    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {
          'infile=/Users/mmekosh/XRISM/docs/resources/rslflagpix/test_out/test0.out',
          'inantfile=/Users/mmekosh/XRISM/docs/resources/rslflagpix/data/xa093109000rsl_a0ac_uf.evt.gz',
          'outfile=/Users/mmekosh/XRISM/docs/resources/rslflagpix/test_out/test1.out',
          'antpsp=A',
          'checkpsp=YES',
          'antshift=CALDB',
          'gtifile=NONE',
          'calcant=YES',
          'antdtpre=CALDB',
          'antdtfol=CALDB',
          'antphathr=71',
          'antdurthr=2',
          'calcctrec=YES',
          'ctrecdt=0.00024',
          'calcprox=YES',
          'proxdt=0.00072',
          'calcctel=YES',
          'pixdeffile=CALDB',
          'cteldt=CALDB',
          'ctelnear=1',
          'calcctel2=NO',
          'cteldt2=CALDB',
          'ctelnear2=1',
          'pxpithr="600 600 600 600"',
          'usepxpithr=ALL',
          'pharatiothr=50.0',
          'calcmxs=NO',
          'inmxsgti=gti.fits',
          'inmxsnoglogti=NONE',
          'kalow=5860.',
          'kahigh=5930.',
          'kblow=6450.',
          'kbhigh=6520.',
          'dtflag=NO',
          'ckrisetime=YES',
          'resetflags=NONE',
          'clobber=yes',
          'chatter=3',
          'logfile=/Users/mmekosh/XRISM/docs/resources/rslflagpix/test_out/test1.log'
        },
      },
    }
  end,
  },

  -- {
  --   'ldelossa/nvim-dap-projects',
  --   config = function()
  --     require('nvim-dap-projects').config_paths = {'/Users/mmekosh/XRISM/heasoft/nvim-dap.lua'}
  --   end
  -- },

  {
    'stevearc/aerial.nvim',
    opts = {
      disable_max_lines = 30000,
    },
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-tree/nvim-web-devicons',
    }
  },
}
