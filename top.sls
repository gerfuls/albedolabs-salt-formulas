base:
  '*':
    - vim
    - vim.rc
    - vim.nerdtree
    - tmux
    - ssh_auth.root
  'salt-master*':
    - vim.salt
  'myinstance':
    - nginx
    - rvm
    - ssh_auth.deploy
