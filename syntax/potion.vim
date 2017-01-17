if exists("b:current_syntax")
    finish
endif

" echom 'Our syntax highlighting code will go here'

let b:current_syntax="potion"

syntax keyword potionKeyword loop to times while
syntax keyword potionKeyword if elsif else
syntax keyword potionKeyword class return

syntax keyword potionFunction print join string

highlight link potionKeyword Keyword
highlight link potionFunction Function


syntax match potionComment "\v#.*$"
highlight link potionComment Comment

" later match definitions have a higher priority
syntax match potionOperator "\v\*"
syntax match potionOperator "\v/"
syntax match potionOperator "\v\+"
syntax match potionOperator "\v-"
syntax match potionOperator "\v\?"
syntax match potionOperator "\v\="
syntax match potionOperator "\v\*\="
syntax match potionOperator "\v/\="
syntax match potionOperator "\v\+\="
syntax match potionOperator "\v-\="

highlight link potionOperator Operator

" bad for string="foo\\"bar"
" good for string="She said: \"Vimscript is tricky, but useful\"!"
syntax region potionString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link potionString String

