include:
  - vim

editor:
  alternatives.install:
    - link: /usr/bin/editor
    - path: /usr/bin/vim
    - priority: 50
    - require:
      - pkg: vim
