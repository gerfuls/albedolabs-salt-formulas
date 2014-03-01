include:
  - nginx_passenger.config

# Based on http://www.modrails.com/documentation/Users%20guide%20Nginx.html

# Add HTTPS support for apt
passenger-repo-deps:
  pkg.installed:
    - names:
      - apt-transport-https
      - ca-certificates
    - require_in:
      - pkgrepo: passenger-repo

passenger-repo:
  pkgrepo.managed:
    {% set dist = salt['grains.get']('lsb_distrib_codename') %}
    - name: deb https://oss-binaries.phusionpassenger.com/apt/passenger {{dist}} main
    - dist: {{dist}}
    - file: /etc/apt/sources.list.d/passenger.list
    - keyid: 561F9B9CAC40B2F7
    - keyserver: keyserver.ubuntu.com
    - require-in:
      - pkg: passenger-nginx

passenger-nginx:
  pkg.installed:
    - names:
      - nginx-extras
      - passenger
    - requre-in:
      - sls: nginx_passenger.config

nginx:
  service:
    - running
    - enable: True
    - watch:
      - file: /etc/nginx/*
