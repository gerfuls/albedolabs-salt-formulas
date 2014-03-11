base:
  '*':
    - users
  'salt-master':
    - salt.master
    - salt.rackspace
  'myinstance*':
    - apollo.staging
    - apollo.deploy
