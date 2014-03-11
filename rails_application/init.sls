# Sets up everything needed to host a rails application under
# /var/www/rails_application/current.
# Rails application itself is not included.
#
# Requires a user/group named 'deploy' that you can log in as. This should be
# configured in a pillar.

include:
  - rvm
  - nginx_passenger
  - users

bundler:
  gem.installed

/etc/nginx/sites-enabled/rails-application:
  file.managed:
    - source: salt://rails_application/rails-application
    - template: jinja
    # Copy permissions of main nginx.conf file
    - use:
      - file: /etc/nginx/nginx.conf

/var/www/rails-application:
  file.directory:
    - user: deploy
    - group: deploy
    - makedirs: True
    # Allow anyone in the 'deploy' group to modify files.
    - dir_mode: 775
    - file_mode: 664

github.com:
  ssh_known_hosts:
    - present
    - user: deploy
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48
