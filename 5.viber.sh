
sudo dpkg -i deb/viber.deb


sudo apt-get -f -y install
sudo apt-get -y purge scratch-text-editor
sudo apt-get -y autoremove

#instead using / as delimiter, sometomes we need different delimiter, in my case this is pipe - |
sudo sed -i '/Exec/ s|/opt/|env XDG_CURRENT_DESKTOP=Unity /opt/|' /usr/share/applications/viber.desktop