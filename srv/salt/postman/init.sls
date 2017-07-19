download_postman_tar_files:
  file.managed:
    - name: /home/devstack/Desktop/postman.tar.gz
    - source: https://dl.pstmn.io/download/latest/linux64
    - skip_verify: True

untar_postman:
  archive.extracted:
    - name: /opt
    - source: /home/devstack/Desktop/postman.tar.gz

create_symbolic_link:
  file.symlink:
    - name: /usr/bin/postman
    - target: /opt/Postman/Postman

{% for dir in ['/.local', '/.local/share', '/.local/share/applications'] %}
create_directory_to_hold_configuration_{{ dir }}:
  file.directory:
    - name: {{ dir }}
    - user: root
    - group: root
    - mode: 755
{% endfor %}
    
create_shortcut_icon:
  file.managed:
    - name: /.local/share/applications/postman.desktop 
    - source: salt://postman/files/postman.desktop
    - user: devstack
    - group: devstack
    - mode: 644

  
