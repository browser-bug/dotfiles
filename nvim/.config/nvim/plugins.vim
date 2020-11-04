"gruvbox
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_invert_selection='0'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
colorscheme gruvbox

"vim-airline powerline fix
let g:airline_powerline_fonts = 1

"ripgrep
if executable('rg')
    let g:rg_derive_root='true'
endif

"fzf
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

"bujo
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

"highlighted_yank
let g:highlightedyank_highlight_duration = 50
" From NVIM-0.5
"augroup highlight_yank
    "autocmd!
    "autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)
"augroup END
"vim-highlightedyank

