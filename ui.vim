syntax sync minlines=256
set synmaxcol=300
set re=1
set lazyredraw

" Disable git gutter by default
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0
let g:gitgutter_map_keys = 0



map <Leader>ug :GitGutterToggle<CR>

" Hide vertical split separator
hi VertSplit ctermfg=8 ctermbg=8

"" Statusline, source: https://gitlab.com/sshbio/dot/snippets/13567

set laststatus=2

function StatusHighlight(mode, active)
    hi StatusWarning ctermbg=136 ctermfg=235 term=none cterm=none

    if a:active == 0
        hi StatusMode ctermbg=235 ctermfg=240 term=bold cterm=bold
        hi StatusLeft ctermbg=235 ctermfg=240 term=none cterm=none
        hi StatusMiddle ctermbg=233 ctermfg=240 term=none cterm=none
        hi StatusRight1 ctermbg=241 ctermfg=235 term=none cterm=none
        hi StatusRight2 ctermbg=235 ctermfg=240 term=none cterm=none
        return ' '

    elseif a:mode == 'n' || a:mode == 'c'
        hi StatusMode ctermbg=148 ctermfg=22 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return 'N'

    elseif a:mode == 'i'
        hi StatusMode ctermbg=231 ctermfg=23 term=bold cterm=bold
        hi StatusLeft ctermbg=31 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=24 ctermfg=117 term=none cterm=none
        hi StatusRight1 ctermbg=117 ctermfg=23 term=none cterm=none
        hi StatusRight2 ctermbg=31 ctermfg=117 term=none cterm=none
        return 'I'

    elseif a:mode == 'R' || a:mode == 't'
        hi StatusMode ctermbg=160 ctermfg=231 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return a:mode == 'R' ? 'R' : 'T'

    elseif a:mode == 'v' || a:mode == 'V' || a:mode == ''
        hi StatusMode ctermbg=208 ctermfg=88 term=bold cterm=bold
        hi StatusLeft ctermbg=240 ctermfg=231 term=none cterm=none
        hi StatusMiddle ctermbg=236 ctermfg=247 term=none cterm=none
        hi StatusRight1 ctermbg=252 ctermfg=241 term=none cterm=none
        hi StatusRight2 ctermbg=240 ctermfg=250 term=none cterm=none
        return a:mode == 'v' ? 'V' : a:mode == 'V' ? 'V' : 'V'

    else
        return a:mode
    endif
endfunction

" Set color scheme
colorscheme badwolf

" Allow devicons to set airline
let g:airline_powerline_fonts = 1
autocmd FileType nerdtree setlocal nolist
hi MatchParen ctermbg=blue
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "\uf459",
    \ "Staged"    : "\uf457",
    \ "Untracked" : "\uf459",
    \ "Renamed"   : "\uf45a",
    \ "Unmerged"  : "2",
    \ "Deleted"   : "\uf458",
    \ "Dirty"     : "\uf178 ",
    \ "Clean"     : "4",
    \ 'Ignored'   : '\uf474',
    \ "Unknown"   : "?"
    \ }
set encoding=UTF-8
