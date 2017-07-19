print_in_configure:
  cmd.run:
    - name: echo 'In configure sls inside learn_include'

#calling_execution_module_within_state:
#  module.run:
#    - service.status:
#        - m_name: salt-master

calling_execution_module_within_state:
  module.run:
    - network.ip_addrs:
      - interface: eth0
