# TODO Find a way to parameterize username
deploy:
  user.present:
    - shell: /bin/bash

{% for user, data in pillar.get('users', {}).items() %}
{% if data['rvm_group'] %}
{{user}}:
  user.present:
    - groups:
      - deploy
{% endif %}
{% endfor %}

rvm-deps:
  pkg.installed:
    - names:
      - bash
      - coreutils
      - gzip
      - bzip2
      - gawk
      - sed
      - curl
      - git-core
      - subversion

mri-deps:
  pkg.installed:
    - names:
      - build-essential
      - openssl
      - libreadline6
      - libreadline6-dev
      - curl
      - git-core
      - zlib1g
      - zlib1g-dev
      - libssl-dev
      - libyaml-dev
      - libsqlite3-0
      - libsqlite3-dev
      - sqlite3
      - libxml2-dev
      - libxslt1-dev
      - autoconf
      - libc6-dev
      - libncurses5-dev
      - automake
      - libtool
      - bison
      - subversion
      - ruby

ruby-1.9.3-p448:
  rvm.installed:
    - default: True
    - user: deploy
    - require:
      - pkg: rvm-deps
      - pkg: mri-deps
      - user: deploy
