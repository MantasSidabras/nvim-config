local ls = require "luasnip"

ls.snippets = {
  all = {
    ls.parser.parse_snippet("clg", "console.log($1);")
  }
}



