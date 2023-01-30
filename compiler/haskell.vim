if exists("current_compiler")
  finish
endif

let current_compiler = "haskell"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=runhaskell\ %
" CompilerSet errorformat=\n%f:%l:%c:\ %m
