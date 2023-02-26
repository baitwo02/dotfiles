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


ls.add_snippets("lua", {
  s(
    {
      trig = "snippet",
      name = "snippet",
      dscr = { "snippet片段补全,", "用于创建 snippet !" },
      wordTrig = true,
      regTrig = false,
      hidden = false,
      priority = 1000,
    },
    {
      t({ "s(" }),
      t({ "", string.rep("\t",1) .. "{" }),
      t({ "", string.rep("\t",2) .. "trig = \"" }),   i(1, "trigger"), t({ "\"," }),
      t({ "", string.rep("\t",2) .. "name = \"" }),   i(2, "name"),    t({ "\"," }),
      t({ "", string.rep("\t",2) .. "dscr = { \"" }), i(3, "dscr"),    t({ "\" }," }),
      t({ "", string.rep("\t",2) .. "wordTrig = " }), i(4, "true"),    t({ "," }),
      t({ "", string.rep("\t",2) .. "hidden = " }),   i(5, "false"),   t({ "," }),
      t({ "", string.rep("\t",2) .. "priority = " }), i(6, "1000"),    t({ "," }),
      t({ "", string.rep("\t",1) .. "}," }),
      t({ "", string.rep("\t",1) .. "{"  }), i(7),
      t({ "", string.rep("\t",1) .. "}," }),
      t({ "", string.rep("\t",1) .. "{}" }),
      t({ "", ")," }),
    },
    {}
  ),
})
