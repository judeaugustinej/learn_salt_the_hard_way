{% for FORMULA in ['filebeat', 'spark', 'haproxy', 'template'] %}
download_formula_repo_{{ FORMULA}}:
  git.latest:
    - name: https://github.com/saltstack-formulas/{{ FORMULA }}-formula.git
    - target: {{ pillar.get('path_formula') }}{{ FORMULA }}
{% endfor %}
