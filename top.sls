base:
  '*':
    - vim
    - vim.rc
    - vim.nerdtree
    - tmux
  'salt-master*':
    - vim.salt
  'myinstance':
    - nginx
    - rvm
