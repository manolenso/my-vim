if !has('python')
        finish
endif

function! HelloWorld()

python <<< EOF

print "Hello world!"

EOF

endfunction
