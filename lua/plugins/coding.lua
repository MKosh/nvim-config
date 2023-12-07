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
        -- args = {
        --   'attfile=${DOCS}/resources/xamkehk/xa003303550/xa003303550.att',
        --   'orbfile=${DOCS}/resources/xamkehk/xa003303550/xa003303550.orb',
        --   'outfile=${DOCS}/resources/xamkehk/test_out/xa003303550_test.ehk',
        --   'tstart=150541417',
        --   'tstop=150627824',
        --   'bintime=1',
        --   'textend=0.0',
        --   'reference=NONE',
        --   'timecol=TIME',
        --   'attext=ATTITUDE',
        --   'attform=EULER',
        --   'attcol=EULER',
        --   'teldeffile=${CALDB}/data/xrism/xtend/bcf/teldef/xa_xtd_teldef_20190101v002.fits[0]',
        --   'rsl_teldeffile=${CALDB}/data/xrism/resolve/bcf/teldef/xa_rsl_teldef_20190101v003.fits[0]',
        --   'cor2file=${CALDB}/data/gen/bcf/rigidity_20060421.fits[0]',
        --   'cor3file=${CALDB}/data/gen/bcf/rigidity_20160101.fits[0]',
        --   'saafile=${CALDB}/data/xrism/gen/bcf/xa_gen_saa_20190101v001.fits[1]',
        --   'leapsecfile=${HEADAS}/refdata/leapsec.fits',
        --   'orbext=ORBIT',
        --   'orbcol=A,E,I,AN,AP,MA',
        --   'orbform=KEPLERIAN',
        --   'clobber=yes',
        --   'chatter=3',
        --   'debug=yes',
        --   'logfile=${DOCS}/resources/xamkehk/test_out/xa003303550_xamkehk.log',
        -- },
        args = {
          'infile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/output/rslmxs_pls90ms_spc203ms_i1to4mA_hksim002_new_ut02.fits',
          'outfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/output/rslmxs_pls90ms_spc203ms_i1to4mA_hksim002_new_ut02.fits.rslmxstime',
          'outgti=mxstime.#.gti',
          'timfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xrism_test.tim.gz',
          'mxsledfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xa_rsl_mxsparam_20190101v002trial0.fits',
          'delayfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/xa_gen_delay_20140101v001.fits.gz',
          'leapsecfile=/Users/mmekosh/temp/rslmxsgti_ut/rslmxsgti_uts/ut02/input/leapsec.fits',
          'stimecol=S_TIME',
          'tioncol=FWE_TI_LED#_ON',
          'tioffcol=FWE_TI_LED#_OFF',
          'iledcol=FWE_I_LED#_CAL',
          'iledsetcol=FWE_I_LED#_SET_CAL',
          'plslencol=FWE_LED#_PLS_LEN',
          'plsspccol=FWE_LED#_PLS_SPC',
          'timeoncol=TIME_LED#_ON',
          'timeoffcol=TIME_LED#_OFF',
          'calctime=YES',
          'calcgti=YES',
          'afterglow=YES',
          'dtafterglow=FILE',
          'decaythresh=0.001',
          'interp=TWOPOINT',
          'mxsoffset=FILE',
          'clobber=YES',
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
