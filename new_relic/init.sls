# Based on https://gist.github.com/avimar/5968480
# Install instructions at https://newrelic.com/docs/server/server-monitor-installation-ubuntu-and-debian

pkgrepo-managed-deps:
  pkg.installed:
    - names:
      - python-apt
    - require_in:
      - pkgrepo: base

base:
  pkgrepo.managed:
    - humanname: Newrelic PPA
    - name: deb http://apt.newrelic.com/debian/ newrelic non-free
    #- dist: precise
    - file: /etc/apt/sources.list.d/newrelic.list
    - keyid: 548C16BF
    - keyserver: subkeys.pgp.net
    - require_in:
      - pkg: newrelic-sysmond

newrelic-license-key:
  cmd.wait:
    - name: nrsysmond-config --set license_key={{ pillar['new_relic']['license_key'] }}
    - unless: grep "license_key={{ pillar['new_relic']['license_key'] }}" /etc/newrelic/nrsysmond.cfg
    - watch:
      - pkg: newrelic-sysmond
    - require_in:
      - service: newrelic-sysmond

newrelic-sysmond:
  pkg:
    - installed
  service:
    - running
