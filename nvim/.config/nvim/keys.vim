let mapleader = " "

"open init file quickly
nnoremap <Leader><CR> :e ~/.config/nvim/init.vim<CR>

"general
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-c> <esc>
vnoremap X "_d
nnoremap <leader>2 "+
xnoremap <leader>2 "+
" Use tab for %
nnoremap <tab> %
vnoremap <tab> %
" Spellcheck
nnoremap <C-f> a<C-x>s
nnoremap <leader>se :setlocal spell! spelllang=en<CR>
nnoremap <leader>si :setlocal spell! spelllang=it<CR>

" Scholarref
"insert reference into current buffer
nnoremap <leader>sr :r !scholarref<space>

"FZF
nnoremap <Leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <Leader>ps :Rg<SPACE>

"Bujo(todo list)
nmap <C-S> <Plug>BujoAddnormal
imap <C-S> <Plug>BujoAddinsert
nmap <C-Q> <Plug>BujoChecknormal
imap <C-Q> <Plug>BujoCheckinsert


"""Debugger
fun! GotoWindow(id)
    call win_gotoid(a:id)
    MaximizerToggle
endfun

nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <leader>dt :call GotoWindow(g:vimspector_session_windows.tagpage)<CR>
nnoremap <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>
nnoremap <leader>de :call vimspector#Reset()<CR>

nnoremap <leader>dtcb :call vimspector#CleanLineBreakpoint()<CR>

nmap <leader>dl <Plug>VimspectorStepOver
nmap <leader>dj <Plug>VimspectorStepInto
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>

nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
"""Debugger

"""Coc
inoremap <silent><expr> <C-space> coc#refresh()
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>cr :CocRestart
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" clangd switch header/source files
nnoremap <leader>gg :CocCommand clangd.switchSourceHeader<CR>

" Prettier format
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"code navigation and more
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>g[ <Plug>(coc-diagnostic-next)
nmap <leader>g] <Plug>(coc-diagnostic-prev)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
"""Coc

"FuGITive
nmap <leader>gl :diffget //3<CR>
nmap <leader>gh :diffget //2<CR>
nmap <leader>gs :vert G<CR>

"Undotree
nnoremap <leader>u :UndotreeToggle<CR>

"Nerdtree
nnoremap <leader>pv :NERDTreeToggle<CR>

"Vimtex
nnoremap <leader>xx :VimtexCompile<CR>
nnoremap <leader>xc :VimtexClean<CR>
nnoremap <leader>xi :VimtexTocToggle<CR> \| <C-w>h
nnoremap <leader>xp :VimtexView<CR>
nnoremap <leader>xm :VimtexContextMenu<CR>
