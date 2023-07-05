local cmp = require("cmp")
local luasnip = require("luasnip")
local compare = require("cmp.config.compare")

local has_words_before = function()
	unpack = unpack or table.unpack
	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

-- 配置一般补全
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif has_words_before() then
				cmp.complete()
			else
				fallback()
			end
		end, { "i", "s" }),

		["<s-tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			else
				fallback()
			end
		end, { "i", "s" }),

		["jj"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),

		["kk"] = cmp.mapping(function(fallback)
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),

		["<c-b>"] = cmp.mapping.scroll_docs(-4),
		["<c-f>"] = cmp.mapping.scroll_docs(4),
		["<c-e>"] = cmp.mapping.abort(),
		["<cr>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
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

-- 配置git相关, 需要下载对应插件
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
		{ name = "buffer" },
	},
})

-- 让 : 命令能使用 path cmdline 补全
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
		{ name = "cmdline" },
	}),
})

-- 设置 lsp 配置, 这是 cmp 官方配置, 先放这儿, 之后可能采取其他方式配置 lsp
-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- require("lspconfig")["pyright"].setup {
--     capabilities = capabilities
-- }
