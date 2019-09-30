" Better inline fold text when the text is folded
function! fold#foldline() abort
	let numlines_folded = v:foldend - v:foldstart + 1
  let preamble = printf("[%d folded]", numlines_folded)

	return '+~~ ' . preamble . ' '
endfunction

" Set general fold options
function! fold#options() abort
  if has('folding')
    set foldcolumn=0
    set fillchars+=fold:~
    set foldmethod=indent
    set foldtext=fold#foldline()
  endif
endfunction

" Refresh the fold options when you load the view
function! fold#loadview() abort
	silent loadview
  silent call fold#options()
endfunction

" If you're not in the root directory cd into and mkview
function! fold#mkview() abort
	if exists('*haslocaldir') && haslocaldir()
		cd -
		mkview
		lcd -
	else
		mkview
	endif
endfunction
