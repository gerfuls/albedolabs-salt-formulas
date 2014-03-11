base:
  '*':
    - salt.minion
    - hostsfile
    - vim
    - vim.rc
    - vim.nerdtree
    - vim.default
    - tmux
    - users
  'salt-master':
    - salt.mymaster
    - vim.salt
  'apollo-*-web*':
    - apollo
  '*-*-elasticsearch*':
    - elasticsearch
    - elasticsearch.plugins
