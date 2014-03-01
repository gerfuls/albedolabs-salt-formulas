base:
  '*':
    - vim
    - vim.rc
    - vim.nerdtree
    - tmux
    #- ssh_auth.root
    - users
  'salt-master*':
    - vim.salt
  'myinstance':
    - nginx
    - rvm
