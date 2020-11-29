scriptencoding utf-8

if empty(glob(expand('$XDG_CONFIG_HOME') . '/vim/autoload/plug.vim'))
  silent !curl -fLo $XDG_CONFIG_HOME/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('$XDG_CACHE_HOME') . '/vim/plugged')

"""""""""""""""""""
" Settings
"""""""""""""""""""
" Sensible
Plug 'tpope/vim-sensible'
" Readline key bindings
" Plug 'tpope/vim-rsi'

"""""""""""""""""""
" Appearance
"""""""""""""""""""
" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
" Devicons
Plug 'ryanoasis/vim-devicons'
" Airline
Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
" Tmux line
Plug 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 0
" Show numbers.vim
Plug 'myusuf3/numbers.vim'
" Git Gutter
Plug 'airblade/vim-gitgutter'
" Indent Guides
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size = 1

"""""""""""""""""""
" Languages
"""""""""""""""""""
" vim-markdown
Plug 'tpope/vim-markdown'

" Vim Javascript / JSX / TS / MDX
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
let g:vim_jsx_pretty_colorful_config = 1
Plug 'jxnblk/vim-mdx-js'

" Vim GraphQL
Plug 'jparise/vim-graphql'

" Vim JSON
Plug 'elzr/vim-json'

" Tmux Conf
Plug 'tmux-plugins/vim-tmux'

" Vim CSS Color
" Plug 'ap/vim-css-color'

" Kotlin
Plug 'udalov/kotlin-vim'

"""""""""""""""""""
" Resources
"""""""""""""""""""
" Copy/Paste from clipboard
"Plug 'christoomey/vim-system-copy'
" Tools for writers
Plug 'reedes/vim-pencil'
nnoremap <silent> Q gqap
Plug 'reedes/vim-lexical'
let g:lexical#spelllang = ['en_us', 'pt_br',]
let g:lexical#spellfile = ['~/.config/vim/spell/en.utf-8.add',
                        \ '~/.config/vim/spell/pt.utf-8.add',]
Plug 'dbmrq/vim-ditto'
augroup writerTools
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
                            \ | call lexical#init()
                            \ | DittoOn
augroup END
" Repeat commands with dot '.'
Plug 'tpope/vim-repeat'
" Fuzzy finder
Plug 'junegunn/fzf', {
      \ 'dir': expand('$XDG_CACHE_HOME') . '/fzf',
      \ 'do': './install --all --xdg --no-bash --no-fish'
      \}
" NERDTree
Plug 'scrooloose/nerdtree'
map <C-e> :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFind<CR>
let g:NERDTreeBookmarksFile = $MY_VIM_HOME . '/.NERDTreeBookmarks'
let g:NERDTreeShowHidden = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 0
let g:NERDTreeMouseMode = 2
let g:NERDTreeKeepTreeInNewTab = 1
"let g:NERDTreeIgnore=['^\.git$']
" NERDTree git marks
Plug 'Xuyuanp/nerdtree-git-plugin'
" NERDCommenter <leader>c<space>
Plug 'preservim/nerdcommenter'
let g:NERDSpaceDelims = 1
" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/](\.git|node_modules)$'
" Vim Editor Config
Plug 'editorconfig/editorconfig-vim'
" Easy Motion
Plug 'easymotion/vim-easymotion'
" Surround
Plug 'tpope/vim-surround'
" Vim buffer bye
Plug 'moll/vim-bbye'
" Git integration
Plug 'tpope/vim-fugitive'
" Asynchronous Lint Engine
Plug 'dense-analysis/ale'
let g:ale_enabled = 1
let g:ale_completion_enabled = 0
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
let g:ale_fixers = {
      \   '*': ['remove_trailing_lines', 'trim_whitespace'],
      \   'javascript': ['eslint'],
      \   'javascriptreact': ['eslint'],
      \   'typescript': ['eslint'],
      \   'typescriptreact': ['eslint'],
      \   'json': ['fixjson'],
      \}
" let g:ale_fixers = {
      " \ 'javascript': ['prettier', 'eslint'],
      " \ 'php': ['phpcbf', 'php_cs_fixer'],
      " \ 'python': ['autopep8'],
      " \ 'sh': ['shfmt'],
      " \ 'go': ['gofmt']
      " \}

" COC LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source $MY_VIM_HOME/coc.vim

call plug#end() " END Plugins
