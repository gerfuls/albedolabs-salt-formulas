deploy_auth:
  ssh_auth:
    - present
    - user: deploy
    - source: salt://ssh_auth/deploy.id_rsa.pub
