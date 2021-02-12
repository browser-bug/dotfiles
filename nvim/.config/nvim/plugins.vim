"gruvbox
"let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_invert_selection='0'
"if exists('+termguicolors')
    "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif
"colorscheme gruvbox

let g:dracula_colorterm = 0
colorscheme dracula
sign define vimspectorBP         text=\ ● texthl=DraculaOrange
sign define vimspectorBPCond     text=\ ◆ texthl=DraculaOrange
sign define vimspectorBPDisabled text=\ ● texthl=LineNr
sign define vimspectorPC         text=\ ▶ texthl=DraculaGreen linehl=CursorLine
sign define vimspectorPCBP       text=●▶  texthl=DraculaGreen linehl=CursorLine


"vim-airline powerline fix
let g:airline_powerline_fonts = 1

"vimtex
let g:vimtex_view_method = 'zathura'
"let g:vimtex_quickfix_mode=0
let g:vimtex_mappings_enabled = 0

"ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

"fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let $FZF_DEFAULT_OPTS='--reverse'

"bujo
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
let g:bujo#window_width = 80

"highlighted_yank
let g:highlightedyank_highlight_duration = 50
" From NVIM-0.5
"augroup highlight_yank
    "autocmd!
    "autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
"augroup END

"startify
let g:startify_bookmarks = [
    \ {'v': '~/.config/nvim'},
    \ '~/.zshrc',
    \ '~/.zshenv',
    \ '~/.oh-my.zsh',
    \ {'z': '~/.zsh'},
    \ {'c': '~/.config/i3/config'},
    \ '~/.config/i3status/config',
    \ {'t': '~/.config/kitty'},
    \ ]
let g:startify_session_dir = '~/.nvim/session'
let g:startify_session_persistence = 1
let g:startify_session_before_save = [
        \ 'silent! :tabdo NERDTreeClose',
        \ 'silent! :bufdo NERDTreeClose'
        \ ]
let g:startify_custom_header = startify#fortune#boxed()
let g:startify_change_to_vcs_root = 1
let g:startify_change_to_dir = 0

"headerguard
let g:headerguard_use_cpp_comments=1
