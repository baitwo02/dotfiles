return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = true,
    ft = "typst",
    opts = {
      -- get_root = function(bufnr)
      --   return vim.api.nvim_buf_get_name(bufnr):match('(.*/)')
      -- end,
    },
    build = function()
      require("typst-preview").update()
    end,
  },
  {
    "kaarmu/typst.vim",
    ft = "typst",
    lazy = false,
  },
}
