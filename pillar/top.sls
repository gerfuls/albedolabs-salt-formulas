base:
  '*':
    - users
  'salt-master':
    - salt.master
  'myinstance*':
    - apollo.staging
    - apollo.deploy
