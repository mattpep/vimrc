" Vim syntax file
" Language:		Esperanto (parts of speech)
" Maintainer:		Matt Peperell <matt@peperell.com>

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn case ignore
syn match       adjective      	"[ĉŝĥĵĝŭA-za-z]*a "
syn match       adjective      	"[ĉŝĥĵĝŭA-za-z]*aj "
syn match       adjective      	"[ĉŝĥĵĝŭA-za-z]*an "
syn match       adjective      	"[ĉŝĥĵĝŭA-za-z]*ajn "
syn match       noun      	"[ĉŝĥĵĝŭA-za-z]*ojn "
syn match       noun      	"[ĉŝĥĵĝŭA-za-z]*on "
syn match       noun      	"[ĉŝĥĵĝŭA-za-z]*oj "
syn match       noun      	"[ĉŝĥĵĝŭA-za-z]*o "

syn match       verb		"[ĉŝĥĵĝŭA-za-z]*as "
syn match       verb		"[ĉŝĥĵĝŭA-za-z]*os "
syn match       verb		"[ĉŝĥĵĝŭA-za-z]*is "
syn match       verb		"[ĉŝĥĵĝŭA-za-z]*us "
syn match       verb		"[ĉŝĥĵĝŭA-za-z]*i "

syn match       adverb		"[ĉŝĥĵĝŭA-za-z]*aŭ "
syn match       adverb		"[ĉŝĥĵĝŭA-za-z]*e "

syn match       pron		"vi "
syn match       pron		"vin "
syn match       pron		"mi "
syn match       pron		"min "
syn match       pron		"li "
syn match       pron		"lin "
syn match       pron		"ni "
syn match       pron		"nin "
syn match       pron		"ci "
syn match       pron		"cin "
syn match       pron		"si "
syn match       pron		"sin "
syn match       pron		"ri "
syn match       pron		"rin "
syn match       pron		"ĝi "
syn match       pron		"ĝin "
syn match       pron		"ŝi "
syn match       pron		"ŝin "
syn match       pron		"ŝli "
syn match       pron		"ŝlin "

hi def link adjective		Statement
hi def link noun		Type
hi def link verb		PreProc
hi def link adverb		Comment
hi def link pron		Float


" Need to sync on the header. Assume we can do that within 100 lines
if exists("mail_minlines")
    exec "syn sync minlines=" . mail_minlines
else
    syn sync minlines=100
endif

let b:current_syntax = "eo"
