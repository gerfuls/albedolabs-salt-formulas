include:
  - rails_application

apollo-gem-deps:
  pkg.installed:
    - names:
      - g++
      - libmysqlclient-dev
      - libmysqlclient18
      - libxslt1-dev
      - libxml2-dev
      - make
      - mysql-client-5.5
      - nodejs

{% set app_root = '/var/www/rails-application' %}
{% set config = app_root + '/shared/config' %}

{{ config }}:
  file.directory:
    # Use same user/mode as parent
    - use:
      - file: {{ app_root }}
    - makedirs: true

{{ config }}/application.yml:
  file.managed:
    - source: salt://apollo/application.yml
    - template: jinja
    # Since this file contains extra-sensitive passwords and keys, don't make it world-readable.
    - user: deploy
    - group: deploy
    - mode: 640
    - show_diff: false

{{ config }}/database.yml:
  file.managed:
    - source: salt://apollo/database.yml
    - use:
      - file: {{ config }}/application.yml

