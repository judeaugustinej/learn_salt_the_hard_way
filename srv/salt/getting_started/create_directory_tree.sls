{% for folder in ['/home/devstack/salt_demo/example_01/srv','/home/devstack/salt_demo/example_01/srv/salt'] %}
creating_{{ folder }}:
  file.directory:
    - name: {{ folder }}
    - user: root
    - group: root
    - mode: 775
{% endfor %}
