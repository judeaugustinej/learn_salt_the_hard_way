### Postman
* Used to test Rest-apis

#### Installation steps
* Download the tar file.
```
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
```

* Untar to given location.
```
sudo tar -xzf postman.tar.gz -C /opt
```

* Remove the tar-file
```
rm postman.tar.gz
```

* Create a symbolic link
```
sudo ln -s /opt/Postman/Postman /usr/bin/postman
```

* Create configuration for creating a shortcut.
```
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
Icon=/opt/Postman/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL
```
