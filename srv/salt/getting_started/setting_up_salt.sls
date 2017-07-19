check_salt_master_status:
  service.running:
    - name: salt-master

check_salt_minion_status:
  service.running:
    - name: salt-minion

#Install_salt_ssh:
#  pkg.installed:
#    - name: salt-ssh

#check_salt_ssh_status:
#  service.running:
#    - name: salt-ssh
#    - require: 
#      - name: check_salt_ssh_status

create_salt_state_directory:
  file.directory:
    - name: /srv/salt/
    - mode: 755

create_salt_pillar_directory:
  file.directory:
    - name: /srv/pillar/
    - mode: 755
