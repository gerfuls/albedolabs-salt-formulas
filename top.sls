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
  'apollo-*-web1':
    # Only run this cron on one instance
    - apollo.database_backup
  '*-*-elasticsearch*':
    - elasticsearch
    - elasticsearch.plugins
