local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

local run_code = function()
  local filetype = vim.api.nvim_eval("&filetype")
  vim.cmd([[ w ]])

  if filetype == "c" then
    vim.cmd([[ set splitright ]])
    vim.cmd([[ vsplit ]])
    vim.cmd([[ term make run && time ./%< ]])

  elseif filetype == "lua" then
    vim.cmd([[ set splitright ]])
    vim.cmd([[ vsplit ]])
    vim.cmd([[ term time lua % ]])

  elseif filetype == "python" then
    vim.cmd([[ set splitright ]])
    vim.cmd([[ vsplit ]])
    vim.cmd([[ term time python % ]])

  elseif filetype == "sh" then
    vim.cmd([[ set splitright ]])
    vim.cmd([[ vsplit ]])
    vim.cmd([[ term time bash % ]])

  elseif filetype == "markdown" then
    vim.cmd([[ MarkdownPreviewToggle ]])

  elseif filetype == "go" then
    vim.cmd([[ set splitright ]])
    vim.cmd([[ vsplit ]])
    vim.cmd([[ term time go run % ]])

  elseif filetype == "typ" then 
    vim.cmd([[ term time make run ]])

  end
end

keymap("n", "r", run_code, opts)
