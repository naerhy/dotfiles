" Vim syntax file
" Language: C
" Author: Naerhy

syn keyword boolConstants TRUE FALSE

syn match cUserTypes "\w*_[es]t\>"
syn match cFunctions "\w\+\ze("

hi def link boolConstants Constant
hi def link cUserTypes Type
hi def link cFunctions Function
