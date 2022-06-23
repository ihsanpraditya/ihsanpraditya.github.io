" DAFTAR ISI
" Pemasangan plugin oleh Vim-Plug
" Pengaturan editor bawaan. 
" Pengaturan plugin kemampuan.
" Pengaturan tampilan bawaaan dan pluginnya:

" Semua bagian ditulis dengan huruf kapital

" VIM-PLUG
call plug#begin('~/.config/nvim/plugged')
 
" PLUGIN KEMAMPUAN EDITOR:
Plug 'mhinz/vim-startify' " Halaman Selamat Datang
" Plug 'scrooloose/nerdtree' " Sebagai file explorer side bar.
" Plug 'Xuyuanp/nerdtree-git-plugin' " Belum coba.

" PLUGIN KEMAMPUAN TEKS:
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine' " Show indentation by line
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Buat multi cursor
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'lervag/vimtex' " LaTeX engine
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'SirVer/ultisnips' " Snippet library
Plug 'jayli/vim-easycomplete' " LSP and auto-complete
Plug 'gillescastel/latex-snippets'         
Plug 'kien/rainbow_parentheses.vim'
" Plug 'nathanaelkane/vim-indent-guides' " Show indentation
" Plug 'honza/vim-snippets' " Set of Snippets for many languages

" PLUGIN TAMPILAN:
Plug 'itchyny/lightline.vim' " Memperindah status bar di bawah.
Plug 'altercation/vim-colors-solarized' " Tema
Plug 'tomasr/molokai' " Tema
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme' " Tema desain Google, fast, support 4-bit, syntax highlighting, bg-toggle
" Plug 'morhetz/gruvbox' " tema
" Lean & mean status/tabline for vim that's light as air.
" Plug '/vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plugin Tema dan Kustomisasi
" Plug 'sheerun/vim-polyglot' " Paket bahasa komputer, ada 598 paket bahasa, pendeteksi indentasi otomatis, dan pewarnaan sintaks bahasa.
" Plug 'preservim/vim-markdown' " Markdown Syntax
" Plug 'chriskempson/base16-vim' " Banyak tema
call plug#end()

" PENGATURAN EDITOR BAWAAN:

" PROVIDER
let g:python3_host_prog = '/usr/local/bin/python3'
" let g:perl_host_prog = '/usr/local/bin/perl'
let g:loaded_perl_provider = 0
let g:ruby_host_prog = '/Users/user/.rbenv/versions/3.0.3/bin/neovim-ruby-host'
let g:node_host_prog = '/usr/local/bin/neovim-node-host'

" Pengaturan NVim kaitannya dengan Terminal yang dipakai
" if $TERM =~ '^\(rxvt\|screen\|nsterm\|interix\|putty\)\(-.*\)\?$'
"     set notermguicolors
" elseif $TERM =~ '^\(tmux\|iterm\|vte\|gnome\)\(-.*\)\?$'
"     set termguicolors
" elseif $TERM =~ '^\(xterm\)\(-.*\)\?$'
"     if $XTERM_VERSION != ''
"         set termguicolors
"     elseif $KONSOLE_PROFILE_NAME != ''
"         set termguicolors
"     elseif $VTE_VERSION != ''
"         set termguicolors
"     else
"         set notermguicolors
"     endif
" endif

" PENGATURAN PLUGIN KEMAMPUAN: 
" Vimtex
" Tex-Conceal
" UltiSnips
" Vim-Easycomplete
" Emmet
" MarkdownPreview
" NERDTree
" Indent

" VIMTEX
let g:vimtex_view_method = 'skim'
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_enabled=1
let g:vimtex_fold_enabled=1
let g:vimtex_view_skim_sync=1
let g:vimtex_view_skim_activate=1
let g:vimtex_view_skim_reading_bar=1
" let g:vimtex_view_skim_sync=1
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let maplocalleader = ","
nmap <F5> <Plug>(vimtex-compile-ss)
nmap <F6> <Plug>(vimtex-view)

" default vimtex latexmk compiler engine
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \}

" latexmk engine non continues compilation
let g:vimtex_compiler_latexmk = {
    \ 'continuous' : 0,
    \}    

" custom function for VIMTEX 
nnoremap <silent> K :call <sid>show_documentation()<cr>
function! s:show_documentation()
  if index(['vim', 'help'], &filetype) >= 0
    execute 'help ' . expand('<cword>')
  elseif &filetype ==# 'tex'
    VimtexDocPackage
  else
    call CocAction('doHover')
  endif
endfunction 

" TEX-CONCEAL
set conceallevel=2
" setlocal spell
" set spelllang=en_us
let g:tex_conceal='abdgm'
let g:tex_conceal_frac=1
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
hi Conceal ctermbg=NONE


" ULTISNIPS
" - https://github.com/nvim-lua/completion-nvim
" let g:UltiSnips#CanExpandSnippet=1
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Biar loading lebih ngebut
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" VIM-EASYCOMPLETE
let g:easycomplete_tab_trigger="<C-space>"
let g:easycomplete_diagnostics_enable = 0
let g:easycomplete_lsp_checking = 0
let g:easycomplete_signature_enable = 0
nnoremap gr :EasyCompleteReference<CR>
nnoremap gd :EasyCompleteGotoDefinition<CR>
nnoremap rn :EasyCompleteRename<CR>
nnoremap gb :BackToOriginalBuffer<CR>

" EMMET
"allow emmet in all mode
let g:user_emmet_mode='a'
 
" allow emmet for html and css only
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" redefining emmet key
let g:user_emmet_leader_key='<C-z>'

" Snippet to add meta tag for responsiveness
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

" 2 MARKDOWN PLUGIN : SYNTAX AND PREVIEW
" Disable folding
" let g:vim_markdown_folding_disabled = 1
" let g:Tex_AutoFolding = 0
" set foldenable
" set foldmethod=syntax
" set foldcolumn=0
" set foldlevel=1
" let g:vim_markdown_math = 1
" let g:vim_markdown_frontmatter = 1
" let g:vim_markdown_toml_frontmatter = 1
" let g:vim_markdown_json_frontmatter = 1
" let g:vim_markdown_strikethrough = 1
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = '/Applications/Firefox.app'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" NERDTree Configuration
" nnoremap <C-t> :NERDTreeToggle<CR>

" " Start NERDTree when Vim starts with a directory argument.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
"     \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" " Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" " Close the tab if NERDTree is the only window remaining in it.
" autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
" autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"     \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" " NERDTreeGit Configuration
" let g:NERDTreeGitStatusIndicatorMapCustom = {
"                 \ 'Modified'  :'✹',
"                 \ 'Staged'    :'✚',
"                 \ 'Untracked' :'✭',
"                 \ 'Renamed'   :'➜', 
"                 \ 'Unmerged'  :'═', 
"                 \ 'Deleted'   :'✖', 
"                 \ 'Dirty'     :'✗', 
"                 \ 'Ignored'   :'☒', 
"                 \ 'Clean'     :'✔︎', 
"                 \ 'Unknown'   :'?', }

" let NERDTreeShowLineNumbers=1

" INDENT
let g:indentLine_enabled=0
let g:indentLine_char_list=[]
let g:indentLine_char_list=['|', '¦', '┆', '┊']
" let g:indentLine_concealcursor='inc'
" let g:indentLine_conceallevel=1
let g:indentLine_setConceal = 0

let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background Switch dark-light from Solarized theme
call togglebg#map("<F4>")

" PENGATURAN TAMPILAN BAWAAAN DAN PLUGINNYA:
" Visual-Multi
" Lightline
" Number
" ColorScheme
" Transparent
" Font Configuration
" FZF Search
" Better Rainbow Parentheses
" Cursor

" VISUAL-MULTI
let g:VM_maps = {} 
let g:VM_maps["Add Cursor Up"]   = '<C-k>'
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_mouse_mappings = 1

" LIGHTLINE
let g:lightline = {'colorscheme': 'PaperColor'}
" others : e plugged/lightline.vim/colorscheme.md
"

" NUMBER
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" COLORSCHEME
set tgc " agar warna base15 nya nyala
set background=dark
colo desert
" light color: zellner, peachpuff, shine(dont use),morning, delek, PaperColor 

" TRANSPARENT
" hi Normal ctermbg=NONE guibg=NONE 
" hi NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

map <esc> :noh <CR>
sy on
set synmaxcol=120
" set nowrap
set noshowmode
set noswapfile
set shiftwidth=4

" FONT CONFIGURATION
" non-gui:
" hi Comment cterm=italic ctermfg=DarkGray
" hi Normal ctermfg=Gray
" hi SpellBad cterm=NONE ctermfg=NONE ctermbg=NONE
" hi SpellLocal cterm=underlineline ctermbg=NONE
" gui:
hi Comment gui=italic cterm=italic guifg=Gray ctermfg=DarkGray
hi Normal guifg=NONE

" completion-menu
" dark default theme
hi Pmenu guibg=Gray guifg=Black
hi PmenuSel guibg=Black guifg=Gray
" FZF
set rtp+=/usr/local/opt/fzf

" Better Rainbow Parentheses
let g:rbpt_colorpaird = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" CURSOR:
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
    \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
    \,sm:block-blinkwait175-blinkoff150-blinkon175
