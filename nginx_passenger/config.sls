/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx_passenger/nginx.conf
    - mode: 644 
    - user: root
    - group: root

/etc/nginx/sites-enabled/default: file.absent
