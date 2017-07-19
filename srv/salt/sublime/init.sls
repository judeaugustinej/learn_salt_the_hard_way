# download security-key
# add sublime text 
#install_sublime:
#  - name: 

manage_sublime_repo:
  pkgrepo.managed:
    - humanname: sublime-text
    - name: deb https://download.sublimetext.com/ apt/stable/
    - file: /etc/apt/sources.list.d/sublime-text.list
    - key_url: https://download.sublimetext.com/sublimehq-pub.gpg
    - require_in:
      - pkg: install_sublime

install_sublime:
  pkg.installed:
    - name: sublime-text
    - cache_valid_time: 300
    - allow_updates: True
