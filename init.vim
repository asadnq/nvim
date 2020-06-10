source $HOME/.config/nvim/autocmd.vim
source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/appearance.vim


if has('python')
  set pyx=2
elseif has('python3')
  set pyx=3
endif
