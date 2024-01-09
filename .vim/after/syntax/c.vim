" Vim syntax file
" Language: C
" Author: Naerhy

syn match cUserTypes "\w*_[est]\>"
syn match cFunctions "\w\+\ze("

hi def link cUserTypes Type
hi def link cFunctions Function
