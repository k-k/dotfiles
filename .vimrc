"Use Pathogen to autoload bundles {
	execute pathogen#infect()
"}

"Automatically detect file types {
	filetype plugin indent on
"}

"Turn on Syntax Highlighting {
	syntax enable

	"Syntax highlighting for Sql
	let g:php_sql_query=1
"}

"Set Colorscheme {
	set background=dark
    let g:gruvbox_italic = 0
    let g:gruvbox_termcolors=16
	colorscheme gruvbox 
    set mouse=a
"}

"Set Tabs {
	set softtabstop=4
	set shiftwidth=4
	set tabstop=4
	set smarttab
	set expandtab " Some day, I might start using spaces...
"}

"Set Line Numbers {
	set nu
"}

"Get rid of annoying Error Bell {
	set noerrorbells
	set visualbell
"}

"Folding {{
	let g:php_folding=1
	set foldmethod=syntax
"}}


"Home & End Keymapping {
	map  $
	imap  $

	map  g0
	imap  g0
"}

"Auto Doc Blocks {
	let g:pdv_template_dir = $HOME ."/.vim/bundle/vim-pdv/templates"
	nnoremap <F15> :call pdv#DocumentCurrentLine()<cr>
"}

"SuperTab Keybind (NOT CURRENTLY IN PLUGIN FOLDER) {
"	let g:SuperTabDefaultCompletionType = "<c-n>"
"}

"TagBar Settings {
	nmap <F13> :TagbarToggle<cr>
	"Also mapped to F6 when not using Fullsize Keyboard
	nmap <F6> :TagbarToggle<cr>
	"Proper Ctags locations
	let g:tagbar_ctags_bin='/usr/local/bin/ctags'
	"Default is 40, seems too wide
	let g:tagbar_width=34
"}

"PHP Namespace Keybinds {
	"Fully Qualified Classnames
	imap <Leader>e <C-O>:call PhpExpandClass()<CR>
	nmap <Leader>e :call PhpExpandClass()<CR>

	"Add Use Statements for Namespaced Class
	imap <Leader>u <C-O>:call PhpInsertUse()<CR>
	nmap <Leader>u :call PhpInsertUse()<CR>
"}

"Toggles VIM from light to dark background {
	map <F5> :call ToggleBg()<CR>

	function! ToggleBg()
		if &background == 'dark'
			set bg=light
		else
			set bg=dark
		endif
		colorscheme gruvbox
	endfunc
"}
