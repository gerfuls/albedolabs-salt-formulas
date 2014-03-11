include:
  - salt.master
  # The master should manage itself.
  - salt.minion

salt-mymaster:
  # Tell minion that the master is localhost.
  host.present:
    - ip: 127.0.0.1
    - name: salt

/etc/salt/cloud.profiles:
  file.managed:
    - source: salt://salt/cloud.profiles

/etc/salt/cloud.providers:
  file.managed:
    - source: salt://salt/cloud.providers
    - template: jinja
    # Has sensitive information, like the Rackspace API key
    - mode: 640
    - show_diff: false
