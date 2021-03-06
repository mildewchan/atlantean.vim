" " Vim color file - atlantean "
" File: atlantean.vim
" URL: github.com/mildewchan/atlantean.vim
" Author: mildewchan (mildewchan@gmail.com)
" License: WTFPL
" Initial version generated by http://bytefluent.com/vivify 2020-12-02
"
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "atlantean"

" All color names are xterm aliases modified to fit the smaller scope 
" of this colorscheme's palette
let s:color_alias = {
  \ 'Black': '#000000',
  \ 'White': '#ffffff',
  \ 'Grey3': '#eeeeee',
  \ 'Grey2': '#d0d0d0',
  \ 'Grey1': '#949494',
  \ 'Grey0': '#6c6c6c',
  \ 'PaleTurqouise': '#5e7a8f',
  \ 'DarkNavyBlue': '#18364a',
  \ 'IndianRed': '#c35656',
  \ 'CadetBlue': '#4aafbb',
  \ 'SteelBlue': '#4992a3',
  \ 'MediumPurple': '#327194',
  \ 'LightSkyBlue': '#87afd7',
  \ 'DeepSkyBlue': '#005f87',
  \ 'LightSteelBlue': '#d7d7ff',
  \ 'SharkGrey': '#7d8b96',
  \ 'MutedTurqouise': '#87afaf',
  \ 'VeryLightSkyBlue': '#afd7ff',
  \ 'MildPink': '#ffafaf',
  \ 'MildGreen': '#afffd7',
  \ }

let s:color_xterm = {
  \ '#000000': [16],
  \ '#ffffff': [231],
  \ '#eeeeee': [255],
  \ '#d0d0d0': [254],
  \ '#949494': [244],
  \ '#6c6c6c': [242],
  \ '#a8a8a8': [248],
  \ '#5e7a8f': [66],
  \ '#18364a': [23],
  \ '#c35656': [167],
  \ '#4aafbb': [73],
  \ '#4992a3': [67],
  \ '#327194': [60],
  \ '#87afd7': [110],
  \ '#005f87': [24],
  \ '#7d8b96': [245],
  \ '#d7d7ff': [189],
  \ '#afd7ff': [153],
  \ '#ffafaf': [217],
  \ '#afffd7': [158],
  \ '#87afaf': [109],
  \ }

function! s:hi(item, fg, bg)
  " default -> bright red -> undefined behavior
  let l:fg_xterm=(a:fg=='NONE')?'NONE':get(s:color_xterm, a:fg, 160)[0]
  let l:bg_xterm=(a:bg=='NONE')?'NONE':get(s:color_xterm, a:bg, 160)[0]
  execute printf("highlight %s ctermfg=%s ctermbg=%s guifg=%s guibg=%s 
                \ guisp=%s",
                \ a:item, l:fg_xterm, l:bg_xterm, a:fg, a:bg, a:bg)
endfunction

function! s:ahi(item, fg, bg)
  " call s:hi with a text alias, rather than an RGB code
  let l:fg_xterm=(a:fg=='NONE')?'NONE':get(s:color_alias, a:fg, '#d70000')
  let l:bg_xterm=(a:bg=='NONE')?'NONE':get(s:color_alias, a:bg, '#d70000')
  call s:hi(a:item, l:fg_xterm, l:bg_xterm)
endfunction

call s:ahi("User1", "White", "SteelBlue")
call s:ahi("User2", "SharkGrey", "Grey2")
call s:ahi("User3", "White", "MutedTurqouise")

call s:ahi("Normal", "PaleTurqouise", "Grey3")
call s:ahi("LineNr", "SharkGrey", "Grey2")
call s:ahi("String", "SharkGrey", "NONE")
call s:ahi("Comment", "MutedTurqouise", "NONE")
call s:ahi("Delimiter", "CadetBlue", "NONE")
call s:ahi("Identifier", "CadetBlue", "NONE")
call s:ahi("Statement", "SteelBlue", "NONE")
call s:ahi("Function", "DeepSkyBlue", "NONE")
call s:ahi("Type", "SteelBlue", "NONE")
call s:ahi("Typedef", "SteelBlue", "NONE")
call s:ahi("Structure", "SteelBlue", "NONE")
call s:ahi("StorageClass", "SteelBlue", "NONE")
call s:ahi("Include", "IndianRed", "NONE")
call s:ahi("PreProc", "IndianRed", "NONE")
call s:ahi("Macro", "IndianRed", "NONE")
call s:ahi("Special", "IndianRed", "NONE")
call s:ahi("Exception", "IndianRed", "NONE")
call s:ahi("SpecialComment", "IndianRed", "NONE")
call s:ahi("SpecialChar", "IndianRed", "NONE")
call s:ahi("Todo", "IndianRed", "NONE")
call s:ahi("Constant", "SteelBlue", "NONE")
call s:ahi("Conditional", "SteelBlue", "NONE")
call s:ahi("Repeat", "SteelBlue", "NONE")
call s:ahi("Operator", "DeepSkyBlue", "NONE")
call s:ahi("TabLine", "SteelBlue", "Grey3")
call s:ahi("TabLineSel", "White", "IndianRed")
call s:ahi("TabLineFill", "Grey3", "Grey3")
call s:ahi("PMenu", "SteelBlue", "Grey2")
call s:ahi("PMenuSel", "White", "SteelBlue")
call s:ahi("DiffChange", "NONE", "VeryLightSkyBlue")
call s:ahi("DiffText", "NONE", "MildPink")
call s:ahi("DiffDelete", "NONE", "MildPink")
call s:ahi("DiffAdd", "NONE", "MildGreen")
call s:ahi("Underlined", "SteelBlue", "NONE")
call s:ahi("Title", "IndianRed", "NONE")
call s:ahi("ModeMsg", "IndianRed", "NONE")
call s:ahi("Float", "IndianRed", "NONE")
call s:ahi("VertSplit", "Grey3", "MutedTurqouise")
call s:ahi("StatusLineNC", "SharkGrey", "Grey2")
call s:ahi("StatusLine", "MutedTurqouise", "White")
call s:ahi("WildMenu", "White", "SteelBlue")
" CursorLine is a special snowflake, and needs to have
" underline explicitly disabled for some reason
call s:ahi("CursorLine", "NONE", "Grey2")
hi CursorLine gui=NONE cterm=NONE guisp=NONE
"hi Float guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
"hi CursorLine guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi StatusLine guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=bold ctermfg=235 ctermbg=1 cterm=bold
"hi StatusLineNC guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi VertSplit guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
"hi ModeMsg guifg=#F9F9F9 guibg=#192224 guisp=#192224 gui=bold ctermfg=15 ctermbg=235 cterm=bold
"hi Title guifg=#d75f5f guibg=#e4e4e4 guisp=#e4e4e4 gui=bold ctermfg=167 ctermbg=254 cterm=bold
"hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
"hi Operator guifg=#005f87 guibg=NONE guisp=NONE gui=bold ctermfg=24 ctermbg=NONE cterm=bold
"hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi Special guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Conditional guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
"hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi Type guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi Constant guifg=#5f87af guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
"hi Repeat guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
"hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi PreProc guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi Typedef guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi Normal guifg=#5e7a8f guibg=#e4e4e4 guisp=#e4e4e4 gui=NONE ctermfg=66 ctermbg=254 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --
"hi Include guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
"hi Identifier guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi SpecialChar guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi Conditional guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
"hi StorageClass guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi Todo guifg=#F9F9FF guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=189 ctermbg=1 cterm=NONE
"hi Special guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi LineNr guifg=#5f5f87 guibg=#c8cbcc guisp=#c8cbcc gui=NONE ctermfg=60 ctermbg=252 cterm=NONE
"hi PMenuSel guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
"hi Delimiter guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi Comment guifg=#0f4242 guibg=NONE guisp=NONE gui=italic ctermfg=23 ctermbg=NONE cterm=NONE
"hi Structure guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi Macro guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi TabLineSel guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=bold ctermfg=235 ctermbg=1 cterm=bold
"hi Operator guifg=#005f87 guibg=NONE guisp=NONE gui=bold ctermfg=24 ctermbg=NONE cterm=bold
"hi DiffDelete guifg=NONE guibg=#192224 guisp=#192224 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi Function guifg=#005f87 guibg=NONE guisp=NONE gui=bold ctermfg=24 ctermbg=NONE cterm=bold
"hi PreProc guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
"hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi TabLine guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=bold ctermfg=235 ctermbg=66 cterm=bold
"hi PMenu guifg=#192224 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
"hi Type guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
"hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
"hi Constant guifg=#5f87af guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
"hi String guifg=#696969 guibg=NONE guisp=NONE gui=NONE ctermfg=242 ctermbg=NONE cterm=NONE
"hi Repeat guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
"hi Underlined guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi Title guifg=#d75f5f guibg=#e4e4e4 guisp=#e4e4e4 gui=bold ctermfg=167 ctermbg=254 cterm=bold
"hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi IncSearch guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi SignColumn guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi SpecialComment guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Folded guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi PreCondit guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi ErrorMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi Debug guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Label guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi Search guifg=#192224 guibg=#BD9800 guisp=#BD9800 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Statement guifg=#6086b5 guibg=NONE guisp=NONE gui=bold ctermfg=67 ctermbg=NONE cterm=bold
hi SpellRare guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Character guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi Boolean guifg=#A1A6A8 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#192224 guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual guifg=#192224 guibg=#F9F9FF guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi MoreMsg guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellCap guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Exception guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi Keyword guifg=#d75f5f guibg=NONE guisp=NONE gui=bold ctermfg=167 ctermbg=NONE cterm=bold
hi Cursor guifg=#192224 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Tag guifg=#BD9800 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi MatchParen guifg=#BD9800 guibg=NONE guisp=NONE gui=bold ctermfg=1 ctermbg=NONE cterm=bold
hi SpellBad guifg=#F9F9FF guibg=#192224 guisp=#192224 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=bold ctermfg=60 ctermbg=NONE cterm=bold
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
