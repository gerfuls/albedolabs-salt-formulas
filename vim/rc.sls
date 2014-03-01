/etc/vim/vimrc.local:
  file.managed:
    - source: salt://vim/files/vimrc
    - mode: 644
    - user: root
    - group: root
