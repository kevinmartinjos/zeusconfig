set number
set tabstop=4

call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'https://github.com/cohama/lexima.vim'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
call plug#end()



let g:ctrlp_custom_ignore = {
	\   'dir' : '\.git$\|build$\|bower_components\|node_modules\|dist\|anaconda3\|target|',
	\ 	'file' : '\v\.(exe|dll|lib)$'
	\ }


nnoremap J gT
nnoremap K gt
set tabstop=4
set shiftwidth=4
set expandtab
set iskeyword-=_
set autoindent
set cursorline
set showmatch
let python_highlight_all = 1
let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1
au VimEnter * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * silent! !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
