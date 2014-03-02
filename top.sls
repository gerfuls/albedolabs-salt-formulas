base:
  '*':
    - vim
    - vim.rc
    - vim.nerdtree
    - vim.default
    - tmux
    - users
  'salt-master*':
    - vim.salt
  'myinstance*':
    - rails_application
