" Vim syntax file
" Language: Papyrus
" Author: Naerhy

syn keyword papyrusHeader Scriptname extends

syn keyword papyrusKeywords auto conditional property
syn keyword papyrusKeywords Event EndEvent
syn keyword papyrusKeywords Function EndFunction
syn keyword papyrusKeywords State EndState

syn keyword papyrusConditional if elseif else endIf

syn keyword papyrusLoop while endWhile

syn keyword papyrusTypes bool float int string

syn keyword papyrusConstants none self true false

syn keyword papyrusScriptObjects Actor ActorBase Alias
syn keyword papyrusScriptObjects Cell
syn keyword papyrusScriptObjects Debug
syn keyword papyrusScriptObjects Form FormList
syn keyword papyrusScriptObjects Game GlobalVariable
syn keyword papyrusScriptObjects ImageSpaceModifier
syn keyword papyrusScriptObjects Keyword
syn keyword papyrusScriptObjects Location
syn keyword papyrusScriptObjects MiscObject
syn keyword papyrusScriptObjects ObjectReference
syn keyword papyrusScriptObjects ReferenceAlias
syn keyword papyrusScriptObjects Quest
syn keyword papyrusScriptObjects Utility

hi def link papyrusHeader PreProc
hi def link papyrusKeywords Function
hi def link papyrusConditional Statement
hi def link papyrusLoop Statement
hi def link papyrusTypes Type
hi def link papyrusConstants Constant
hi def link papyrusScriptObjects Type

let b:current_syntax = "psc"
