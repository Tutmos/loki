read -p "Did you activate the necessary repository?" yn
sudo apt-get -y install software-properties-common
sudo apt-get -y update
sudo apt-get -y upgrade
#http://askubuntu.com/questions/14629/how-do-i-enable-the-partner-repository
# third party repository
sudo sed -i.bak "/^# deb .*partner/ s/^# //" /etc/apt/sources.list
sudo apt-get update
read -p "Repository was activated?" yn
#sublime 2
sudo add-apt-repository -y ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text

sudo apt-add-repository -y ppa:hourglass-team/hourglass-daily
sudo apt-get -y update
sudo apt-get install -y hourglass

# това не работи  - да се провери друго репоситори ли трябва или 
#sudo apt-add-repository -y ppa:l-admin-3/apps-daily && sudo apt-get update
#sudo apt-get install -y configurator

#Стандартно репозитори - след активиране на допълнителните репозиторита
#sudo apt-get update
#sudo apt-get -y install unity-tweak-tool
#sudo apt-get -y install compizconfig-settings-manager
sudo apt-get -y install gimp gimp-data gimp-plugin-registry gimp-data-extras
# skype - не работи
sudo apt-get -y install skype
#sudo apt-get -y install kadu
sudo apt-get -y install filezilla

sudo apt install rar unrar cabextract lzip lunzip arj unace p7zip-rar p7zip
#sudo apt-get -y install network-manager-openvpn
sudo apt-get -y install git
sudo apt-get -y install python-pip
sudo pip install --upgrade pip
sudo apt-get install python-dev  \
     build-essential libssl-dev libffi-dev \
     libxml2-dev libxslt1-dev zlib1g-dev \
     python-pip
sudo apt-get -y install ubuntu-restricted-extras
sudo apt-get -y install vlc browser-plugin-vlc
sudo apt-get -y install python2.7-mysqldb

#sudo add-apt-repository -y ppa:libreoffice/ppa
#sudo apt-get update
sudo apt-get install -y libreoffice-writer
sudo apt-get install -y libreoffice-calc

#atom
# sudo add-apt-repository -y ppa:webupd8team/atom
# sudo apt-get update
# sudo apt-get install -y atom

# как да инсталирам gis-weather
sudo add-apt-repository -y ppa:noobslab/apps
sudo apt-get update
sudo apt-get -y install gis-weather

#sudo apt-get -y install python-dev
sudo pip install peewee
sudo pip install flask
sudo pip install scrapy
read -p "Scrapy was just installed" yn

	#tlp
# sudo add-apt-repository -y ppa:linrunner/tlp
# sudo apt-get update
# sudo apt-get -y install tlp tlp-rdw

#touchpad-indicator
#sudo add-apt-repository -y ppa:atareao/atareao
#sudo apt-get update
#sudo apt-get -y install touchpad-indicator	


sudo unzip ./archives/razorsql6_3_29_linux_x64.zip -d /opt
sudo dpkg -i deb/viber.deb
sudo dpkg -i deb/google-chrome-stable_current_amd64.deb
	#lenovo yoga 2:
	# sudo dpkg -i deb/intel-linux-graphics-installer_1.2.0-0intel1_amd64.deb
	
	# do not suspend when on AC and lid is closed
#	gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action nothing	


# pagages



sudo apt-get -f -y install
sudo apt-get -y purge scratch-text-editor
sudo apt-get -y autoremove


# приставка за вайбър заради Юнити
#sudo add-apt-repository -y ppa:nilarimogard/webupd8
#sudo apt-get update
#sudo apt-get -y install viberwrapper-indicator

sudo cp archives/razorsql.desktop /usr/share/applications/
sudo chmod 644 /usr/share/applications/razorsql.desktop
sudo cp archives/startup.desktop /usr/share/applications/
sudo chmod 644 /usr/share/applications/startup.desktop



# config files:
mkdir /tmp/.config
tar -xvzf ./archives/.config.tar.gz -C /tmp/.config
cp -rT /tmp/.config/  ~/.config

mkdir /tmp/vesel
tar -xvzf ./archives/vesel.tar.gz -C /tmp/vesel
cp -rT /tmp/vesel/ ~/

# sublime from command line
#sudo ln -s /opt/sublime/sublime_text /usr/bin/subl
# disable report sistem crash
sudo sed -i '/enabled/ s/1/0/' /etc/default/apport
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y autoremove
# git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
# bash /tmp/elementary-dropbox/install.sh


#Как да настроя програма да се стартира автоматично при стартиране на Юнити
# показва всички скрити програми в startup application
#sudo sed -i "s/NoDisplay=true/NoDisplay=false/g" /etc/xdg/autostart/*.desktop
#В програмата за стартови апликации избеsudo apt-get update

#ри този път:
#/usr/share/applications

#Шрифтове и настойки на шрифта:
#Инсталирам шрифт от архивната дир:
#Ето и настройките на шрифта в Убунту туик:
#Default font: Segoi UI Regular - 12
#Document font: Sans Regular - 11
#Monospace: Ubuntu Mono Regular - 12
#Windows Title:Segoi UI Bold - 11

#dpkg -I viber.deb | python -c "import sys, re; t=re.split(r'\n(?= ?[\w]+:)|:', sys.stdin.read()); print '\n'.join([i.strip() for i in {key.strip(): value.strip() for key, value in zip(t[::2], t[1::2])}['Depends'].split(',')])"
#tar -xvzf community_images.tar.gz


#Как да инсталирам MYSQL:
#https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/
# dropbox:
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
bash /tmp/elementary-dropbox/install.sh



#sheduled task, drop box, vpn, razorsql, Gis Weather, VLC, FileZila
#https://help.ubuntu.com/community/PowerManagement/ReducedPower
#:
#google-chrome --disable-gpu
#sudo dpkg -i google-chrome-stable_43.0.2357.81-1_amd64.deb

#curl -sL http://i-hate-farms.github.io/spores/install | sudo bash -
#sudo apt-get -y install elementary-tweaks

#sudo apt install software-properties-common &&
#sudo add-apt-repository ppa:philip.scott/elementary-tweaks &&
#sudo apt update &&
#sudo apt install elementary-tweaks



#какво искам от скриптове и нсастройки:
#ВПН
#Ротейшън скрипта.
#Скрипта за таскбара
#Програмата за мипката - име
#sudo restart lightdm
#какво искам от скриптове и нсастройки:
#ВПН
#Ротейшън скрипта.
#Скрипта за таскбара
#Програмата за мипката - име
#sudo restart lightdm
#конфигуриране на принтер
#system-config-printer
