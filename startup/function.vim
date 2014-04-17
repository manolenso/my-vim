
" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  endif
" test function interupteur on/off syntax 
function! ToggleSyntax()
  if exists("g:syntax_on")
        syntax off
     else
        syntax enable
    endif
endfunction
nmap <silent>;s :call ToggleSyntax()<CR>

" Function toogle NERDTree
function! ToggleNerdtree()
    if exists("g:NERDTree_on")
        syntax off
    else
        syntax enable
    endif
endfunction
nmap <leader>n :call ToggleNerdtree()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=magenta
  elseif a:mode == 'r'
    hi statusline guibg=blue
  else
    hi statusline guibg=red
  endif
endfunction

" function toogle 
function! FoldColumnToggle()
    if &foldcolumn
        setlocal foldcolumn=0
    else
        setlocal foldcolumn=4
    endif
endfunction
