base:
  '*':
    - salt.rackspace_global
    - salt.minion
    - users
  'salt-master':
    - salt.rackspace
    - salt.master
  'apollo-*-web*':
    - apollo.deploy
  'apollo-staging-web*':
    - apollo.staging
  'apollo-prod*-web*':
    - apollo.production
  'apollo-*-elasticsearch*':
    - elasticsearch
