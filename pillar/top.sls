base:
  '*':
    - salt.rackspace_global
    - salt.minion
    - users
  'salt-master':
    - salt.rackspace
    - salt.master
  'myinstance*':
    - apollo.staging
    - apollo.deploy
