if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" use system as default clipboard
set clipboard=unnamed

set mouse=a

"   ********************
"   * Set split window *
"   ********************
set splitright
set splitbelow

"   **********************
"   * Default tab values *
"   **********************
set tabstop=2
set shiftwidth=2
set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nu
set hlsearch

" Leader: \ -> <space>
let mapleader = " "

set list listchars=tab:»·,trail:·,nbsp:·

" config
source $HOME/.vim/settings/config/filetype.vim
source $HOME/.vim/settings/config/tmux.vim
source $HOME/.vim/settings/config/key-mappings.vim
source $HOME/.vim/settings/config/ag.vim

" plugins
source $HOME/.vim/settings/plugin/airline.vim
source $HOME/.vim/settings/plugin/ctrlp.vim
" source $HOME/.vim/settings/plugin/markdown-preview.vim
source $HOME/.vim/settings/plugin/syntastic.vim
source $HOME/.vim/settings/plugin/rspec.vim
source $HOME/.vim/settings/plugin/jsx.vim
source $HOME/.vim/settings/plugin/wiki.vim
source $HOME/.vim/settings/plugin/ruby-xmpfilter.vim
" source $HOME/.vim/settings/plugin/markdown.vim
" source $HOME/.vim/vrabac/plugin/tabular.vim
