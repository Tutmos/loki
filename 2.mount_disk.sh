#get disk device by label
D_DISK=$(sudo blkid -L ARCHIVE)
D_TYPE=$(sudo blkid -o value -s TYPE $D_DISK)
UUID_STRING=$(sudo blkid -o full -s UUID $D_DISK | cut -d ' ' -f 2)
UUID_STRING=$(echo $UUID_STRING | sed 's/"//g')
UUID_STRING=$(echo $UUID_STRING" /media/ARCHIVE/               "$D_TYPE"    errors=remount-ro 0       1")

#append in fstab - new mount disk
sudo sed -i "\$a# mount Archive disk" /etc/fstab
sudo sed -i "\$a$UUID_STRING" /etc/fstab
read -p "Fstab updated" yn
