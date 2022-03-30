if exists("current_compiler")
  finish
endif

let current_compiler = "javascript"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=node\ %
" CompilerSet errorformat=%f:\ line\ %l:\ %m
