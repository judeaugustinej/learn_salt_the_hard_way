add_vimrc_to_home:
  file.managed:
    - name: /home/devstack/.virmc
    - source: salt://vim/files/.vimrc
    - user: devstack
    - group: devstack
    - mode: 755
