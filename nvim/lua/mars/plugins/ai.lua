return {
  {
    'coder/claudecode.nvim',
    dependencies = {
      'folke/snacks.nvim',
    },
    config = true,
    opts = {
      terminal = {
        snacks_win_opts = {
          wo = {
            winblend = 100,
            winhighlight = 'NormalFloat:MyTransparentGroup',
          },
        },
      },
    },
    terminal = { enabled = true },
    keys = {
      { '<leader>c', nil, desc = 'Claude Code' },
      { '<leader>cc', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>cf', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>cr', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>cC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>cm', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select Claude model' },
      { '<leader>cb', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      { '<leader>cs', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
      {
        '<leader>cs',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file',
        ft = { 'NvimTree', 'neo-tree', 'oil', 'minifiles', 'netrw' },
      },
      { '<leader>ca', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>cd', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
  },

  {
    'gutsavgupta/nvim-gemini-companion',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'VeryLazy',
    config = function()
      require('gemini').setup()
    end,
    keys = {
      { '<leader>g', nil, desc = 'Gemini Code' },
      { '<leader>gg', '<cmd>GeminiToggle<cr>', desc = 'Toggle Gemini sidebar' },
      { '<leader>gc', '<cmd>GeminiSwitchToCli<cr>', desc = 'Spawn or switch to AI session' },
      { '<leader>gd', '<cmd>GeminiSendLineDiagnostic<cr>', mode = 'n', desc = 'Send to Gemini' },
      { '<leader>gD', '<cmd>GeminiSendFileDiagnostic<cr>', mode = 'n', desc = 'Send to Gemini' },
      { '<leader>ga', '<cmd>GeminiAccept<cr>', mode = 'n', desc = 'Accept Gemini Diff' },
      { '<leader>gd', '<cmd>GeminiDeny<cr>', mode = 'n', desc = 'Deny Gemini Diff' },
      { '<leader>gs', '<cmd>GeminiSend<cr>', mode = { 'v' }, desc = 'Send selection to Gemini' },
    },
  },
}
