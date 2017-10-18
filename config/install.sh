#!/bin/bash

# make a directory for backup
mkdir ~/backup

# create shimamon and simamon commands
# shimamonがいなかったら書き込む
if ! grep -q "shimamon" ~/.bash_profile 2>/dev/null; then
  cat ~/config/bash_profile >> ~/.bash_profile && source ~/.bash_profile;
fi

# make mysql and nginx backup
shimamon backup-all

# editor
sudo apt install -y emacs vim

# ruby
sudo apt install -y ruby-dev ruby-bundler

# alp
sudo apt install -y unzip
cd /tmp
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
unzip alp_linux_amd64
sudo mv -f alp /usr/local/bin/
rm -f alp_linux_amd64

# pt-query
sudo apt install -y libdbd-mysql-perl libdbi-perl libio-socket-ssl-perl libnet-ssleay-perl
cd /tmp
wget https://www.percona.com/downloads/percona-toolkit/3.0.4/binary/debian/xenial/x86_64/percona-toolkit_3.0.4-1.xenial_amd64.deb \
  percona-toolkit.deb
sudo dpkg -i percona-toolkit.deb
rm -f percona-toolkit.deb

# netdata
cd /tmp
curl https://my-netdata.io/kickstart.sh -o kickstart.sh
chmod +x kickstart.sh
sudo ./kickstart.sh all
rm -f kickstart.sh

# htop
sudo apt install -y htop

# restart services
shimamon restart
