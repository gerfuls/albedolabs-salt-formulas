base:
  '*':
    - vim
    - vim.rc
    - vim.nerdtree
    - vim.default
    - tmux
    #- ssh_auth.root
    - users
  'salt-master*':
    - vim.salt
  'myinstance*':
    - rvm
    - nginx_passenger
