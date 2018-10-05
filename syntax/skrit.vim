" Vim syntax file
" Language: Gas Powered Games skrit
" Maintainer: Alpvax
" Latest Revision: 05/10/2018

if exists("b:current_syntax")
  finish
endif

"Disabled due to conflicts.
syn match skrFOURCC "\<[\x00-\xff]\>"
syn match skrOperator "[<>=!~|&+\-*/%()?:^]"
syn match skrLComment "//.*$"
syn region skrBComment start="/\*" end="\*/" fold
syn region skrStr start="\"" end="\""
syn match skrNum "[+-]\=\(0[xX][0-9a-zA-Z]\+\|\d\+\(\.\d\+\)\=\([eE][+-]\=\d\+\)\=\)" display
syn region skrBlock start="{" end="}" fold transparent
syn match skrCtrl "if\|else\|while\|break\|continue\|forever\|return\|sitnspin\|abort"
syn match skrType "bool\|int\|float\|string\|void\|shared\|property\|hidden\|doc"
syn match skrType "Goid"
syn match skrConst "true\|false\|null"
syn match skrSpecial "__LINE__\|__NAME__\|this\|vm\|owner"
syn match skrEvent "event\|trigger\|at\|msec\|frames"
syn match skrState "state\|poll\|transition\|and\|startup\|setstate\|if\|->"
syn match skrDirect "#include #option"
syn region skrOnly start="#only(" end=")" transparent
syn region skrOnlyContent start="\[\[" end="\]\]" fold transparent
syn match skrUSymbol "\w\+\$"
 
let b:current_syntax = "skrit"

hi def link skrLComment Comment
hi def link skrBComment Comment
hi def link skrStr String
hi def link skrNum Number
hi def link skrFOURCC Number
hi def link skrConst Constant
hi def link skrSpecial Special
hi def link skrType Type
hi def link ksrDirect PreProc
hi def link skrOnly PreProc
hi def link skrOnlyContent PreProc
hi def link skrCtrl Statement
hi def link skrEvent Statement
hi def link skrState Statement
hi def link skrOperator Operator
"hi def link skrOpCompare Operator 
"hi def link skrOpLogic Operator
"hi def link skrOpMath Operator
"hi def link skrOpAssign Operator
"hi def link skrOpTernary Operator
"hi def link skrOpBit Operator
"hi def link skrOpBitAssign Operator

"Disable user defined identifier highlighting
hi def link skrUSymbol Identifier
