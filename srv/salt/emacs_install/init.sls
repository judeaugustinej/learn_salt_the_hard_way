Installing_emacs:
  pkg.installed:
    - name: {{ pillar['editor'] }}
