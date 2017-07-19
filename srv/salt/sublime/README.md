### Sublime-text Editor
* Installing sublime text editor

* Adding GPG key

```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```

* Adding sublime repo
```
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
```

* Install editor and update the libraries
```
sudo apt update && sudo apt install sublime-text
``` 
