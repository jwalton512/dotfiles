if exists("current_compiler")
  finish
endif
let current_compiler = "php"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=phpunit
CompilerSet errorformat=%E%n)\ %.%#,%Z%f:%l,%C%m,%C,%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
