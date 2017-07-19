% for name in ['jude', 'augustine', 'job'] %}
{{ name }}:
  cmd.run:
    - name: echo {{ name }}

{% endfor %}

