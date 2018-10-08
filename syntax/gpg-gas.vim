" Vim syntax file
" Language: Gas Powered Games .gas
" Maintainer: Alpvax
" Latest Revision: 08/10/2018

if exists("b:current_syntax")
  finish
endif

syn sync fromstart
syn include @skrit <sfile>:p:h/skrit.vim

syn match gasComment "//.*$"
syn region gasBComment start="/\*" end="\*/" fold
syn match gasType "bool\|int\|float\|string\|void\|shared\|property\|hidden\|doc"
syn match gasConst "true\|false\|null"
"syn match gasDefTN "t:\w\+,n:\w\+" contains=gasDefT,gasDefN contained
"syn region gasDefT start="t:" end="," contains=gasDefType nextgroup=gasDefN
syn match gasDefT "t:" contained nextgroup=gasDefType
syn match gasDefType "\w\+" contained nextgroup=gasDefComma
syn match gasDefComma "," contained nextgroup=gasDefN
syn match gasDefN "n:" contained nextgroup=gasDefName
syn match gasDefName "\w\+" contained
syn match gasDefNOnly "\w\+\*\=" contained
"syn region gasDefBlock start="\[" end="\]" contains=gasDefTN,gasDefNOnly
"syn match gasDefBlock "\[t:\w\+,n:\w\+]" contains=gasDefT,gasDefN
syn match gasDefBlock "\[t:\w\+,n:\w\+]" contains=gasDefT
syn match gasDefBlock "\[\w\+\*\=\]" contains=gasDefNOnly
syn region gasBlock start="{" end="}" fold transparent

syn region gasSkrit start="\[\[" end="\]\]" fold keepend contains=@skrit

let b:current_syntax = "gpg-gas"

hi link gasComment Comment
hi link gasBComment Comment
hi link gasDefType Type
hi link gasDefName Identifier
hi link gasDefNOnly Identifier
hi link gasType Type
hi link gasConst Constant
