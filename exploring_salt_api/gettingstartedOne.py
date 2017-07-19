import salt.client

saltclient = salt.client.LocalClient()

disk_usage = saltclient.cmd('nodename:openstack',
                            'disk.usage',
                            expr_form='grain')
print(disk_usage)
