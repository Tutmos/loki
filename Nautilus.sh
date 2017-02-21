#script for nautilus
sudo apt-get -y install nautilus
gsettings set org.gnome.nautilus.desktop trash-icon-visible false
gsettings set org.gnome.nautilus.desktop volumes-visible false
gsettings set org.gnome.desktop.background show-desktop-icons true

nautilus -n &
killall nautilus

gsettings set org.pantheon.cerbere monitored-processes "['wingpanel', 'plank', 'slingshot-launcher --silent', 'nautilus -n']"
#sudo apt-get -y purge brasero brasero-cdrkit brasero-common dvd+rw-tools
sudo sed -i '/Name/ s/Files/Nautilus/' /usr/share/applications/nautilus.desktop
sudo sed -i '/OnlyShowIn/ s/Unity;/Unity;Pantheon;/' /usr/share/applications/nautilus.desktop
#append to end of file
sudo sed -i "\$a.nautilus-desktop.nautilus-canvas-item {" /usr/share/themes/elementary/gtk-3.0/gtk.css
sudo sed -i "\$acolor: #ffffff;" /usr/share/themes/elementary/gtk-3.0/gtk.css
sudo sed -i "\$atext-shadow: 1 1 alpha (@fg_color, 0.8);" /usr/share/themes/elementary/gtk-3.0/gtk.css
sudo sed -i "\$a}" /usr/share/themes/elementary/gtk-3.0/gtk.css

killall nautilus
touch /home/vesel/Templates/"New File".txt