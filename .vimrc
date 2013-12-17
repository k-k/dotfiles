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

" Who cares about Vi {
 set nocompatible
"}

"Auto-save {
    au FocusLost * :wa
"}

" Change Map Leader {
    set mapleader = ","
"}

" Better Line Wrapping {
    set wrap                                                                        
    set textwidth=79                                                                
    set formatoptions=qrn1                                                          
    set colorcolumn=80
"}

" Better Search and Replace {
    set ignorecase
    set smartcase
    set gdefault
"}

"Set Tabs {
    set softtabstop=4
    set shiftwidth=4
    set tabstop=4
    set smarttab
    set expandtab
"}

"Set Line Numbers - Only in MacVim {
    if has("gui_macvim")
        "set nu
        set relativenumber
    endif
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

"Set Colorscheme {
    set background=dark

    " None GUI versions of VIM don't support italics
    if !has("gui_macvim")
        let g:gruvbox_italic = 0
        let g:gruvbox_termcolors=16
    endif
    colorscheme gruvbox 
"}

"Auto Doc Blocks {
    let g:pdv_template_dir = $HOME ."/.vim/bundle/vim-pdv/templates"
    nnoremap <F15> :call pdv#DocumentCurrentLine()<cr>
"}

"SuperTab Keybind (NOT CURRENTLY IN PLUGIN FOLDER) {
"    let g:SuperTabDefaultCompletionType = "<c-n>"
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

" Remove trailing Whitespace {
    nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"}

" Reselect last pasted text {
    nnoremap <leader>v V`]
"}

" Moving Swp files out of current directories {
    " Save your swp files to a less annoying place than the current directory.
    " If you have .vim-swap in the current directory, it'll use that.
    " Otherwise it saves it to ~/.vim/swap, ~/tmp or .
    if isdirectory($HOME . '/.vim/swap') == 0
      :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
    endif
    set directory=./.vim-swap//
    set directory+=~/.vim/swap//
    set directory+=~/tmp//
    set directory+=.
"}

" Enabling Persistent Undo {
    if exists("+undofile")
        " undofile - This allows you to use undos after exiting and restarting
        " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
        " :help undo-persistence
        " This is only present in 7.3+
        if isdirectory($HOME . '/.vim/undo') == 0
            :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
        endif
        set undodir=./.vim-undo//
        set undodir+=~/.vim/undo//
        set undofile
    endif
"}
