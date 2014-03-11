base:
  '*':
    - salt.minion
    - new_relic
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
