" perl style # commenting
autocmd FileType php,yaml  noremap <F5> :s/\v^(\s*)/\1#/ <CR>
autocmd FileType php,yaml  noremap <F6> :s/\v^(\s*)#/\1/ <CR>
" C style // commenting
autocmd FileType c,cpp,php noremap <F5> :s+\v^(\s*)+\1//+ <CR>
autocmd FileType c,cpp,php noremap <F6> :s+\v^(\s*)//+\1+ <CR>
" vim commenting
autocmd FileType vim noremap <F5> :s/\v^(\s*)/\1"/ <CR>
autocmd FileType vim noremap <F6> :s/\v^(\s*)"/\1/ <CR>
" css commenting
autocmd FileType css noremap <F5> :s/\v^(\s*)/\1"/ <CR>
autocmd FileType css noremap <F6> :s/\v^(\s*)"/\1/ <CR>

