Printing the grains values:
  cmd.run:
   - name: echo '{{ grains.get('os_family') }}'
