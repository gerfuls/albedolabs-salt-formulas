/etc/vim/vimrc.local:
  file.managed:
    - source: salt://vim/vimrc
    - mode: 644
    - user: root
    - group: root
