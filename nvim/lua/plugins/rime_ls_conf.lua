return {
  "liubianshi/cmp-lsp-rimels",
  dependencies = {
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    local cmp = require("cmp")
    local compare = require("cmp.config.compare")
    cmp.setup({
      -- 设置排序顺序
      sorting = {
        comparators = {
          compare.sort_text,
          compare.offset,
          compare.exact,
          compare.score,
          compare.recently_used,
          compare.kind,
          compare.length,
          compare.order,
        },
      },
    })

    -- toggle rime
    vim.b.rime_enabled = false
    local toggle_rime = function(client_id)
      vim.lsp.buf_request(
        0,
        "workspace/executeCommand",
        { command = "rime-ls.toggle-rime" },
        function(_, result, ctx, _)
          if ctx.client_id == client_id then
            vim.b.rime_enabled = result
          end
        end
      )
    end

    -- update lualine
    local function rime_status()
      if vim.b.rime_enabled then
        return "ㄓ"
      else
        return ""
      end
    end

    require("lualine").setup({
      sections = {
        lualine_x = { rime_status, "encoding", "fileformat", "filetype" },
      },
    })

    require("rimels").setup({})
  end,
}
