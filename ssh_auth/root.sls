# This state is used to give root access to the keys in root.id_rsa.pub on ALL machines.
root_auth:
  ssh_auth:
    - present
    - user: root
    - source: salt://ssh_auth/root.id_rsa.pub
