# A simple state to install Elasticsearch.
# Doesn't support discovery of other nodes.

elasticsearch-pkg-deps:
  pkg.installed:
    - names:
      - openjdk-7-jre-headless

elasticsearch-pkg:
  pkg.installed:
    - sources:
      - elasticsearch: https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.0.1.deb

elasticsearch:
  service.running:
    - enable: true
