local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix

ls.add_snippets("c", {
  s(
    {
      trig = "main",
      name = "main function",
      dscr = { "main 函数" },
      wordTrig = true,
      hidden = false,
      priority = 1000,
    },
    {
      i(1, "int"), t({ " main(" }), i(2, "void"), t({ "){" }),
      t({ "", string.rep("\t", 1) }), i(3),
      t({ "", string.rep("\treturn ", 1) }), i(0, "0"), t({ ";" }),
      t({ "", "}" })
    },
    {}
  ),
  s(
    {
      trig = "printf",
      name = "printf",
      dscr = { "printf 函数" },
      wordTrig = true,
      hidden = false,
      priority = 1000,
    },
    {
      t("printf(\""), i(1, "打印内容"), t("\""), i(0), t(");")
    },
    {}
  ),
})
