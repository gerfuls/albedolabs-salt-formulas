/etc/vimrc:
  file.managed:
    - source: salt://vim/files/vimrc
    - mode: 644
    - user: root
    - group: root
