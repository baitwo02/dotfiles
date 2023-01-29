local cmp = require("cmp")
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local autopair_handlers = require('nvim-autopairs.completion.handlers')
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- Ultisnip 相关
vim.g.UltiSnipsExpandTrigger = '<Plug>(ultisnips_expand)'
vim.g.UltiSnipsJumpForwardTrigger = '<Plug>(ultisnips_jump_forward)'
vim.g.UltiSnipsJumpBackwardTrigger = '<Plug>(ultisnips_jump_backward)'
vim.g.UltiSnipsListSnippets = '<c-x><c-s>'
vim.g.UltiSnipsRemoveSelectModeMappings = 0
vim.g.UltiSnipsSnippetsDir = vim.fn.stdpath("config") .. "/UltiSnips"
vim.g.UltiSnipsSnippetDirectories = { "UltiSnips" }

-- 配置一般补全
cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
        cmp_ultisnips_mappings.expand(fallback)
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, { "i", "s", "c" }),

    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s", "c" }),

    ["jj"] = cmp.mapping(function(fallback)
      if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
        cmp_ultisnips_mappings.jump_forwards(fallback)
      else
        fallback()
      end
    end, { "i", "s", "c" }),

    ["kk"] = cmp.mapping(function(fallback)
      if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
        cmp_ultisnips_mappings.jump_backwards(fallback)
      else
        fallback()
      end
    end, { "i", "s", "c" }),

    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "ultisnips" },
    { name = "buffer" },
    { name = "path" },
  })
})

-- 这是干啥的我目前也不知道, 官方配置上的, 应该是 git sign 相关的东西
-- cmp.setup.filetype("gitcommit", {
--     sources = cmp.config.sources({
--         { name = "cmp_git" },
--         { name = "buffer" },
--     })
-- })

-- 让 / ? 命令能够使用 buffer 补全
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" }
  }
})

-- 让 : 命令能使用 path cmdline 补全
cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
    { name = "cmdline" },
  })
})


cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done({
    filetypes = {
      ["*"] = {
        ["("] = {
          kind = {
            cmp.lsp.CompletionItemKind.Function,
            cmp.lsp.CompletionItemKind.Method,
          },
          handler = autopair_handlers["*"]
        }
      },
    }
  })
)

-- 设置 lsp 配置, 这是 cmp 官方配置, 先放这儿, 之后可能采取其他方式配置 lsp
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- require("lspconfig")["pyright"].setup {
--     capabilities = capabilities
-- }
