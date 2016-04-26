if exists("b:current_syntax")
    finish
endif

syn keyword alloyKeyword abstract and as assert
syn keyword alloyKeyword but check else exactly enum
syn keyword alloyKeyword fact for fun module
syn keyword alloyKeyword iff implies Int let in
syn keyword alloyKeyword open or pred run sum extends

syn keyword alloyConstant univ iden
syn keyword alloyOperator one lone all some no none disj not set

syn keyword alloyKeyword   sig  nextgroup=alloySigDecl skipwhite skipnl
syn match   alloySigDecl   /[A-Z][_0-9a-zA-Z']*/ contained nextgroup=alloyComma skipwhite skipnl
syn match   alloyComma     /,/                   contained nextgroup=alloySigDecl skipwhite skipnl

syn region alloyComment start="/\*" end="\*/"
syn region alloyComment start="\-\-" end="\n"
syn region alloyComment start="//" end="\n"

hi def link alloyKeyword    Statement
hi def link alloyComment    Comment
hi def link alloyConstant   Constant
hi def link alloyOperator   Operator
hi def link alloySigDecl    Type

let b:current_syntax = "alloy"

"vim: set foldmethod=marker
