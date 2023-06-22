local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local dap = require("dap")

local dap_signs = {
  DapBreakpoint = {
    text = "🔴",
    texthl = "",
    linehl = "",
    numhl = "",
  },
  DapBreakpointRejected = {
    text = "",
    texthl = "LspDiagnosticsSignHint",
    linehl = "",
    numhl = "",
  },
  DapStopped = {
    text = "➜ ",
    texthl = "LspDiagnosticsSignInformation",
    linehl = "DiagnosticUnderlineInfo",
    numhl = "LspDiagnosticsSignInformation",
  },
}
for name, val in pairs(dap_signs) do
  vim.fn.sign_define(name, val)
end

vim.cmd([[au FileType dap-repl lua require('dap.ext.autocompl').attach()]])


dap.defaults.fallback.terminal_win_cmd = "30hsplit new"
dap.defaults.fallback.focus_terminal = true

-- dap.defaults.python.terminal_win_cmd = "belowright new"

