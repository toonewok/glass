set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "glass"

" Define highlight groups
hi Normal       guifg=#aaaaaa guibg=none ctermfg=252 ctermbg=none gui=none
hi Statement       guifg=#aaaaaa guibg=none ctermfg=252 ctermbg=none gui=none
hi Comment      guifg=#8c7548 gui=italic
hi Keyword      guifg=#799851 gui=bold
hi String       guifg=#66a29b gui=italic
hi Function     guifg=#ac4f6a
hi Identifier   guifg=#58a1c1
hi Type         guifg=#51b036
hi CursorLine   guibg=#ac4f6a
hi Visual       guibg=#434c5e
hi LineNr       guifg=#505050
hi StatusLine   guibg=none guifg=#505050
hi Special      guifg=#ac4f6a gui=itali
hi PreProc      guifg=#799851

" python
hi pythonInclude guifg=#66a29b gui=none
hi pythonAttribute guifg=#799851 gui=none

" sql
hi sqlNumber	guifg=#799851
hi sqlFold	guifg=#bdac4b

