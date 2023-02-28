if exists("b:current_syntax")
    finish
endif

syn keyword alloyKeyword abstract and as assert
syn keyword alloyKeyword but check else exactly exh exhaustive enum
syn keyword alloyKeyword fact for module
syn keyword alloyKeyword iff implies Int let in
syn keyword alloyKeyword or run sum var

syn keyword alloyConstant univ iden
syn keyword alloyOperator one lone all some no none disj not set

" Temporal operators in Alloy 6+
syn keyword alloyOperator always eventually after historically once before until steps

syn match alloyOperator "!"
syn match alloyOperator "@"
syn match alloyOperator "#"
syn match alloyOperator "&"
syn match alloyOperator "*"
syn match alloyOperator "+"
syn match alloyOperator "-"
syn match alloyOperator "/"
syn match alloyOperator ":"
syn match alloyOperator "^"
syn match alloyOperator "\~"
syn match alloyOperator "|"
syn match alloyOperator "="
syn match alloyOperator ">"
syn match alloyOperator "<"
syn match alloyOperator "'"
syn match alloyOperator "‘"
syn match alloyOperator "’"

syn keyword alloyKeyword   sig     nextgroup=alloyDecl skipwhite skipnl
syn keyword alloyKeyword   fact    nextgroup=alloyDecl skipwhite skipnl
syn keyword alloyKeyword   fun     nextgroup=alloyDecl skipwhite skipnl
syn keyword alloyKeyword   pred    nextgroup=alloyDecl skipwhite skipnl
syn keyword alloyKeyword   extends nextgroup=alloyDecl skipwhite skipnl
syn match   alloyDecl   /[a-zA-Z][_0-9a-zA-Z"]*/ contained nextgroup=alloyComma skipwhite skipnl
syn match   alloyComma  /,/                      contained nextgroup=alloyDecl skipwhite skipnl

syn match alloyConstant "\v<0b[01_]+>"
syn match alloyConstant "\v<0x([_]|([0-9A-Fa-f][0-9A-Fa-f]))+>"
syn match alloyConstant "\v<[0-9][0-9_]*>"
syn region alloyConstant start=/\v"/ skip=/\v\\./ end=/\v"/

syn region alloyComment start="/\*" end="\*/"
syn region alloyComment start="\-\-" end="\n"
syn region alloyComment start="//" end="\n"

syn region alloyOpen start=/^open/ end=/\n/

hi def link alloyKeyword    Statement
hi def link alloyComment    Comment
hi def link alloyConstant   Constant
hi def link alloyFunction   Function
hi def link alloyOperator   Operator
hi def link alloyDecl       Function
hi def link alloyOpen       Include

let b:current_syntax = "alloy"

"vim: set foldmethod=marker
