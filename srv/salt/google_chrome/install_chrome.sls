manage_google_chrome_repo:
  pkgrepo.managed:
    - humanname: Google Chrome
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - dist: stable
    - file: /etc/apt/sources.list.d/chrome-browser.list
    - require_in:
      - pkg: install_google_chrome
    - gpgcheck: 1
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub

install_google_chrome:
  pkg.installed:
    - name: google-chrome
    - 
