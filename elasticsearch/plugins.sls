# Simple state to install an Elasticsearch plugin.
# Specify the plugin in pillars, e.g.:
  # elasticsearch:
  #   plugins:
  #     - polyfractal/elasticsearch-inquisitor

include:
  - elasticsearch

{%- set es_dir = '/usr/share/elasticsearch' %}
{%- set bin_dir = es_dir + '/bin' %}
{%- set plugin_dir = es_dir + '/plugins' %}

{%- set plugins = salt['pillar.get']('elasticsearch:plugins', []) %}

{%- for plugin in plugins %}
{%- set name = plugin.split('/')[1] | replace('elasticsearch-', '', 1) %}
elasticsearch-{{name}}:
  cmd.run:
    - name: {{bin_dir}}/plugin --install {{plugin}}
    - unless: stat --format= {{plugin_dir}}/{{name}}
    - require:
      - sls: elasticsearch
{%- endfor %}
