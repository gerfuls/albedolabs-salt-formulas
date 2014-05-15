python-dev:
  pkg.installed
python-pip:
  pkg.installed

mysql-backup-deps:
  pip.installed:
    - name: swift >= 1.0.2
    - require:
      - pkg: python-dev
      - pkg: python-pip

/home/deploy/backups/mysql_backup.sh:
  file.managed:
    - source: salt://apollo/mysql_backup.sh
    - template: jinja
    - user: deploy
    - group: deploy
    - mode: 750
    - show_diff: false
  cron.present:
    - user: deploy
    # Should run daily at 2am
    - hour: 2
    - minute: 0
