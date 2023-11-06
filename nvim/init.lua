require("options")
require("plugins")
require("plugins-conf")
require("lsp-conf")
require("dap-conf")
require("keymaps")
require("run-code")

vim.diagnostic.config({
  virtual_text = false
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

