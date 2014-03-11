salt:
  master:
    fileserver_backend:
      - roots
      - git
    gitfs_remotes:
      #- https://github.com/tmandry/albedolabs-salt-formulas.git
      - https://github.com/saltstack-formulas/vim-formula.git
      - https://github.com/saltstack-formulas/tmux-formula.git
      - https://github.com/saltstack-formulas/nginx-formula.git
      - https://github.com/saltstack-formulas/hostsfile-formula.git
      - https://github.com/saltstack-formulas/users-formula.git
      - https://github.com/saltstack-formulas/salt-formula.git
    #ext_pillar:
    #  - git: master https://github.com/tmandry/albedolabs-salt-formulas.git root=pillar
    pillar_roots:
      base:
        - /srv/salt/pillar
        - /srv/pillar
    file_roots:
      base:
        - /srv/salt
    # Don't print output of states that don't change
    state_verbose: false
  minion:
    master: salt
