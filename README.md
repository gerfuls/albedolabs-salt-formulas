albedolabs-salt-formulas
========================

# Setting up master
General idea of how to install on a new master named `salt-master`:

```sh
# curl -L http://bootstrap.saltstack.org | sudo sh -s -- -M -L git v2014.1.0
# mkdir -p /srv
# cd /srv
# git clone https://github.com/tmandry/albedolabs-salt-formulas.git salt
# service salt-master restart
```

Copy the private pillar files over from the old master in /srv/pillar and customize, then:

```sh
# salt 'salt-master' state.highstate
```

# Setting up a minion

Run this on the master:
```sh
# salt-cloud -p openstack_performance1_1 <instance-name>
# salt '<instance-name>' state.highstate
```

To update each server's hostsfile with the new hostname:
```sh
# salt '*' state.sls hostsfile
```

The instance name matters. See top.sls for a list of patterns and what they do.

You can also customize the instance size; see salt/cloud.profiles for a list.
