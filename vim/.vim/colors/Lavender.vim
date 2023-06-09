" Vim color file
" Converted from Textmate theme Lavender using Coloration v0.4.0 (http://github.com/sickill/coloration)
" 
" Lavender: 256colors Theme. For future edits have look at the cheat sheet at https://jonasjacek.github.io/colors/ 
set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Lavender"

hi Cursor ctermfg=16 ctermbg=231 cterm=NONE guifg=#29222e guibg=#f8f8f0 gui=NONE
hi Visual ctermfg=NONE ctermbg=135 cterm=NONE guifg=NONE guibg=#b657ff gui=NONE
hi CursorLine ctermfg=NONE ctermbg=13 cterm=NONE guifg=NONE guibg=#3b3341 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=13 cterm=NONE guifg=NONE guibg=#3b3341 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=59 cterm=NONE guifg=NONE guibg=#3b3341 gui=NONE

"color below changes curent line 
hi CursorLineNr cterm=bold ctermbg=13 ctermfg=NONE gui=NONE guibg=#3b3341 guifg=NONE
hi LineNr ctermfg=102 ctermbg=59 cterm=NONE guifg=#85788e guibg=#3b3341 gui=NONE
hi VertSplit ctermfg=59 ctermbg=59 cterm=NONE guifg=#5e5465 guibg=#5e5465 gui=NONE
hi MatchParen ctermfg=97 ctermbg=NONE cterm=underline guifg=#8e6da6 guibg=NONE gui=underline
hi StatusLine ctermfg=189 ctermbg=59 cterm=bold guifg=#e0ceed guibg=#5e5465 gui=bold
hi StatusLineNC ctermfg=189 ctermbg=59 cterm=NONE guifg=#e0ceed guibg=#5e5465 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=135 cterm=NONE guifg=NONE guibg=#b657ff gui=NONE
hi IncSearch ctermfg=16 ctermbg=219 cterm=NONE guifg=#29222e guibg=#f5b0ef gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=16 cterm=NONE guifg=#614e6e guibg=#29222e gui=NONE

hi Normal ctermfg=189 ctermbg=16 cterm=NONE guifg=#e0ceed guibg=#29222e gui=NONE
hi Boolean ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi Character ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE

"color below for comments
hi Comment ctermfg=239 ctermbg=NONE cterm=NONE guifg=#614e6e guibg=NONE gui=NONE
hi Conditional ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi DiffAdd ctermfg=189 ctermbg=64 cterm=bold guifg=#e0ceed guibg=#47820e gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#8b0709 guibg=NONE gui=NONE
hi DiffChange ctermfg=189 ctermbg=23 cterm=NONE guifg=#e0ceed guibg=#25365b gui=NONE
hi DiffText ctermfg=189 ctermbg=24 cterm=bold guifg=#e0ceed guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=231 ctermbg=38 cterm=NONE guifg=#f8f8f0 guibg=#00a8c6 gui=NONE
hi WarningMsg ctermfg=231 ctermbg=38 cterm=NONE guifg=#f8f8f0 guibg=#00a8c6 gui=NONE
hi Float ctermfg=206 ctermbg=NONE cterm=NONE guifg=#f25ae6 guibg=NONE gui=NONE
hi Function ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi Identifier ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi Keyword ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi Label ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi NonText ctermfg=59 ctermbg=53 cterm=NONE guifg=#3b3a32 guibg=#322b38 gui=NONE
hi Number ctermfg=206 ctermbg=NONE cterm=NONE guifg=#f25ae6 guibg=NONE gui=NONE
hi Operator ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi PreProc ctermfg=103 ctermbg=NONE cterm=NONE guifg=#9076a1 guibg=NONE gui=NONE
hi Special ctermfg=189 ctermbg=NONE cterm=NONE guifg=#e0ceed guibg=NONE gui=NONE
hi SpecialKey ctermfg=59 ctermbg=59 cterm=NONE guifg=#3b3a32 guibg=#3b3341 gui=NONE
hi Statement ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi StorageClass ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi String ctermfg=211 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi Tag ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi Title ctermfg=189 ctermbg=NONE cterm=bold guifg=#e0ceed guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#614e6e guibg=NONE gui=inverse,bold
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi rubyFunction ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi rubyConstant ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=italic
hi rubyStringDelimiter ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi rubyEscape ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi rubyControl ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=97 ctermbg=NONE cterm=NONE guifg=#8e6da6 guibg=NONE gui=NONE
hi rubyException ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=italic
hi rubyRailsARAssociationMethod ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#614e6e guibg=NONE gui=NONE
hi erubyRailsMethod ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=147 ctermbg=NONE cterm=NONE guifg=#a29dfa guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=98 ctermbg=NONE cterm=NONE guifg=#8e69c9 guibg=NONE gui=NONE
hi cssColor ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=135 ctermbg=NONE cterm=NONE guifg=#b657ff guibg=NONE gui=NONE
hi cssClassName ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi cssValueLength ctermfg=206 ctermbg=NONE cterm=NONE guifg=#f25ae6 guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=219 ctermbg=NONE cterm=NONE guifg=#f5b0ef guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
