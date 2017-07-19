create_directory_for_salt_code_base:
  file.directory:
    - name: /home/devstack/Desktop/learn_salt/
    - mode: 775

clone_salt_code:
  git.latest:
    - name: https://github.com/saltstack/salt.git
    - target: /home/devstack/Desktop/learn_salt/salt/

