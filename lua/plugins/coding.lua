return {
  {
    'echasnovski/mini.comment',
    opts = {

    },
  },


  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    opts = {
      languages = {
        cpp = {__default = "// %s", __multiline = '/* %s */'},
        glsl = "// %s",
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
        -- args = {
        -- },
        args = {
          -- 'infile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/output/rslmxs_pls90ms_spc203ms_i1to4mA_hksim002_new_ut02.fits',
          -- 'outfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/output/rslmxs_pls90ms_spc203ms_i1to4mA_hksim002_new_ut02.fits.rslmxstime',
          -- 'outgti=mxstime.#.gti',
          -- 'timfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xrism_test.tim.gz',
          -- 'mxsledfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xa_rsl_mxsparam_20190101v002trial0.fits',
          -- 'delayfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xa_gen_delay_20140101v001.fits.gz',
          -- 'leapsecfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/leapsec.fits',
          -- 'stimecol=S_TIME',
          -- 'tioncol=FWE_TI_LED#_ON',
          -- 'tioffcol=FWE_TI_LED#_OFF',
          -- 'iledcol=FWE_I_LED#_CAL',
          -- 'iledsetcol=FWE_I_LED#_SET_CAL',
          -- 'plslencol=FWE_LED#_PLS_LEN',
          -- 'plsspccol=FWE_LED#_PLS_SPC',
          -- 'timeoncol=TIME_LED#_ON',
          -- 'timeoffcol=TIME_LED#_OFF',
          -- 'calctime=YES',
          -- 'calcgti=YES',
          -- 'afterglow=YES',
          -- 'dtafterglow=FILE',
          -- 'decaythresh=0.001',
          -- 'interp=TWOPOINT',
          -- 'mxsoffset=FILE',
          -- 'clobber=YES',
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
