func! GetSelectedText()
	normal gv"xy
	let result = getreg("x")
	return result
endfunc
noremap <Leader>C :call system('clip.exe', GetSelectedText())<CR>
noremap <Leader>V :call system('clip.exe', GetSelectedText())<CR>gvx
