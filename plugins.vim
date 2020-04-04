" plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'https://github.com/chrisbra/Colorizer.git'
Plug 'haya14busa/incsearch.vim'
Plug 'preservim/nerdcommenter'

" deoplete.vim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

